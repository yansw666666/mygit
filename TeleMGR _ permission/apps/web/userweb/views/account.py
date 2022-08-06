from apps.base_resource.modules.basic_import import *
from apps.base_resource.modules.basetools import md5
from userweb.models import Account, Roles


def index(request):
    return render(request, 'user/account.html')


def list_values(request):
    # 接收前台传递的数据
    page = int(request.POST.get('page'))
    limit = int(request.POST.get('limit'))
    q_str = request.POST.get('q_str')
    q_status = request.POST.get('q_status')
    q_department = request.POST.get('q_department')
    # 获取所有的登陆账号
    obj_account = list(Account.objects.filter(Q(loginid__icontains=q_str) | Q(name__icontains=q_str))
                       .filter(status__icontains=q_status, department__icontains=q_department).order_by('-create_time').values())
    # 分页
    one_page_data = obj_account[(page-1)*limit:page*limit]
    # 返回
    return JsonResponse({'code': 0, 'count': len(obj_account), 'data': one_page_data})


def add_values(request):
    # 接收传递的值
    rec = request.POST
    # 获取角色的字符串
    roles_str = rec.get('roles')
    # 定义返回值
    res = {'status': True}

    # 判断登陆账号是否存在
    is_exists = Account.objects.filter(loginid=rec.get('loginid')).exists()
    # 判断
    if is_exists:
        res['status'] = False
        res['error'] = '登录账号已存在'
    else:
        try:
            # =========== 第一步：添加登录账号 ===============
            Account.objects.create(
                loginid=rec.get('loginid'),
                loginpwd=md5(rec.get('loginpwd')),
                status=1 if (rec.get('status') == 'on') else 0,
                name=rec.get('name'),
                position=rec.get('position'),
                department=rec.get('department'),
                mobile=rec.get('mobile'),
                email=rec.get('email'),
                create_time=datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
            )
            # =========== 第二部，添加账号和角色的映射关系 =============
            if roles_str:
                # 获取当前的账号对象
                account_obj = Account.objects.filter(loginid=rec.get('loginid')).first()
                # 获取对应的角色
                roles_list = roles_str.split(',')
                # 遍历
                for item in roles_list:
                    roles_obj = Roles.objects.filter(id=int(item)).first()
                    # 添加映射
                    roles_obj.account.add(account_obj)
        except Exception as e:
            res['status'] = False
            res['error'] = '添加账号写入数据库出现异常，具体原因:'+str(e)
    # 返回
    return JsonResponse(res)


def edit_values(request):
    # 接收传递的值
    rec = request.POST
    # 定义返回值
    res = {'status': True}

    try:
        # ===========步骤1：编辑除角色外的属性信息============

        # 获取当前账号
        obj = Account.objects.filter(loginid=rec.get('loginid')).first()
        obj.status = 1 if (rec.get('status') == 'on') else 0
        obj.name = rec.get('name')
        obj.position = rec.get('position')
        obj.department = rec.get('department')
        obj.mobile = rec.get('mobile')
        obj.email = rec.get('email')
        obj.edit_time = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        obj.save()
        res = {'status': True}

        # ===========步骤1：编辑除角色外的属性信息============
        # 1.获取数据中记录的当前用户的角色
        db_roles = list(Roles.objects.filter(account=rec.get('loginid')).values_list('id', flat=True))
        # 2.获取提交时的数据信息
        commit_roles = []
        if rec.get('roles'):
            roles_list = rec.get('roles').split(',')
            # 遍历
            for item in roles_list:
                commit_roles.append(int(item))
        # 3.获取要删除的角色
        del_roles = list(set(db_roles)-set(commit_roles))
        # 4.获取要添加的角色
        add_roles = list(set(commit_roles)-set(db_roles))
        # 5.开始删除
        for item in del_roles:
            # 实例化roles
            roles_obj = Roles.objects.filter(id=item).first()
            # 删除
            roles_obj.account.remove(obj)
        # 5.开始添加
        for item in add_roles:
            # 实例化roles
            roles_obj = Roles.objects.filter(id=item).first()
            # 删除
            roles_obj.account.add(obj)


    except Exception as e:
        res['status'] = False
        res['error'] = '添加账号写入数据库出现异常，具体原因:' + str(e)
    # 返回
    return JsonResponse(res)


def edit_loginpwd(request):
    rec = request.POST
    try:
        obj = Account.objects.filter(loginid=rec.get('ch_loginid')).first()
        if obj.loginpwd != md5(rec.get('ch_oldPass')):
            return JsonResponse({'status': False, 'error': '旧密码输入错误'})
        obj.loginpwd = md5(rec.get('ch_newPass'))
        obj.save()
        return JsonResponse({'status': True})
    except Exception as e:
        return JsonResponse({'status': False, 'error': '修改密码出现异常，具体原因：'+str(e)})


def delete_values(request):
    rec = request.POST
    try:
        Account.objects.filter(loginid=rec.get('loginid')).delete()
        return JsonResponse({'status': True})
    except Exception as e:
        return JsonResponse({'status': False, 'error': '修改密码出现异常，具体原因：' + str(e)})


def change_status(request):
    rec = request.POST
    try:
        obj = Account.objects.filter(loginid=rec.get('loginid')).first()
        obj.status = rec.get('status')
        obj.save()
        return JsonResponse({'status': True})
    except Exception as e:
        return JsonResponse({'status': False, 'error': '修改密码出现异常，具体原因：' + str(e)})

