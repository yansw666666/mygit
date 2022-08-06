
from apps.base_resource.modules.basic_import import *
from exchange.models import Ddjh_px

def index(request):
    return render(request, 'exchange/ddjh.html')


def list_values(request):
    # 接收前台传递的数据
    page = int(request.POST.get('page'))
    limit = int(request.POST.get('limit'))
    q_str = request.POST.get('q_str')
    # 获取所有的登陆账号
    obj_peixian = list(Ddjh_px.objects.filter(Q(station_name__icontains=q_str) |
                                              Q(phone_number__icontains=q_str) |
                                              Q(wx_moduleid__icontains=q_str) |
                                              Q(sb_moduleid__icontains=q_str) |
                                              Q(nm_moduleid__icontains=q_str) |
                                              Q(fy_moduleid__icontains=q_str) |
                                              Q(beizhu__icontains=q_str)).order_by('phone_number').values())
    # 分页
    one_page_data = obj_peixian[(page-1)*limit:page*limit]
    # 返回
    return JsonResponse({'code': 0, 'count': len(obj_peixian), 'data': one_page_data})


def add_values(request):
    # 接收传递的值
    rec = request.POST
    res = {}
    # 判断登陆账号是否存在
    try:
        # =========== 第一步：添加登录账号 ===============
        Ddjh_px.objects.create(
            station_name=rec.get('station_name'),
            phone_number=rec.get('phone_number'),
            sb_moduleid=rec.get('sb_moduleid'),
            sb_modulepair=rec.get('sb_modulepair'),
            wx_moduleid=rec.get('wx_moduleid'),
            wx_modulepair=rec.get('wx_modulepair'),
            rec_moduleid=rec.get('rec_moduleid'),
            rec_modulepair=rec.get('rec_modulepair'),
            nm_moduleid=rec.get('nm_moduleid'),
            nm_modulepair=rec.get('nm_modulepair'),
            fy_moduleid=rec.get('fy_moduleid'),
            fy_modulepair=rec.get('fy_modulepair'),
            setup_date=rec.get('setup_date'),
            beizhu=rec.get('beizhu'),
            )
        return JsonResponse({'status': True})
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
        obj = Ddjh_px.objects.filter(id=rec.get('id')).first()
        print(obj)
        obj.station_name = rec.get('station_name')
        obj.phone_number = rec.get('phone_number')
        obj.sb_moduleid = rec.get('sb_moduleid')
        obj.sb_modulepair = rec.get('sb_modulepair')
        obj.wx_moduleid = rec.get('wx_moduleid')
        obj.wx_modulepair = rec.get('wx_modulepair')
        obj.rec_moduleid = rec.get('rec_moduleid')
        obj.rec_modulepair = rec.get('rec_modulepair')
        obj.nm_moduleid = rec.get('nm_moduleid')
        obj.nm_modulepair = rec.get('nm_modulepair')
        obj.fy_moduleid = rec.get('fy_moduleid')
        obj.fy_modulepair = rec.get('fy_modulepair')
        obj.setup_date = rec.get('setup_date')
        obj.beizhu = rec.get('beizhu')
        obj.save()
        res = {'status': True}
    except Exception as e:
        res['status'] = False
        res['error'] = '添加账号写入数据库出现异常，具体原因:' + str(e)
    # 返回
    return JsonResponse(res)


def delete_values(request):
    rec = request.POST
    try:
        Ddjh_px.objects.filter(id=rec.get('id')).delete()
        return JsonResponse({'status': True})
    except Exception as e:
        return JsonResponse({'status': False, 'error': '修改密码出现异常，具体原因：' + str(e)})