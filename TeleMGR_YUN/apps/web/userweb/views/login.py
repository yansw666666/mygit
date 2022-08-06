from apps.base_resource.modules.basic_import import *
from apps.base_resource.modules.basetools import md5
from userweb.models import Account
from rbac.service import init_permission_menu


def index(request):
    return render(request, 'user/login.html')


def login_handle(request):
    # 接受前端传来的用户名和密码
    loginid = request.POST.get('loginid')
    loginpwd = request.POST.get('loginpwd')
    try:
        obj_users = Account.objects.filter(Q(loginid=loginid) | Q(mobile=loginid) | Q(email=loginid))
        # 判断是否存在
        if not obj_users:
            return JsonResponse({'status': False, 'error': ' 登录的用户信息不存在！'})
        # 判断是否禁用
        if not obj_users[0].status:
            return JsonResponse({'status': False, 'error': ' 账号已禁用，请联系管理员！'})
        # 验证密码
        obj_user = obj_users.filter(loginpwd=md5(loginpwd)).first()
        # 判断是否存在
        if not obj_user:
            return JsonResponse({'status': False, 'error': ' 密码错误！'})
        # ======== 登陆成功，写入当前的时候 ===========
        obj_user.last_login = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
        obj_user.save()
        # ===== 获取返回数据 ====

        res_data = {
            'loginid': obj_user.loginid,
            'name': obj_user.name,
            'department': obj_user.department,
            'position': obj_user.position,
            'mobile': obj_user.mobile,
            'email': obj_user.email,
            'last_login': obj_user.last_login,
            'create_time': obj_user.create_time.strftime("%Y-%m-%d %H:%M:%S"),
        }
        # 存储到session
        request.session['user'] = res_data
        # ======= 获取权限并构建菜单 ======
        init_permission_menu.init_data(request, obj_user)
        # ======= 返回当前用户的数据 ======
        return JsonResponse({'status': True})

    except Exception as e:
        return JsonResponse({'status': False, 'error': "身份验证出现异常"+str(e)})



