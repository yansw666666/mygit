from apps.base_resource.modules.basic_import import *
from protection.models import Protection_gl

def index(request):
    return render(request, 'protection/line.html')


def list_values(request):
    # 接收前台传递的数据
    page = int(request.POST.get('page'))
    limit = int(request.POST.get('limit'))
    q_str = request.POST.get('q_str')
    # 获取所有的登陆账号
    obj_baohu= list(Protection_gl.objects.filter(Q(line_name__icontains=q_str) |
                                              Q(start_end__icontains=q_str) |
                                              Q(terminal_type__icontains=q_str) |
                                              Q(interface_type__icontains=q_str) |
                                              Q(channel_type__icontains=q_str) |
                                              Q(route_detail__icontains=q_str) |
                                              Q(guanglan_inroad__icontains=q_str)).order_by('line_name').values())
    # 分页
    one_page_data = obj_baohu[(page-1)*limit:page*limit]
    # 返回
    return JsonResponse({'code': 0, 'count': len(obj_baohu), 'data': one_page_data})


def add_values(request):
    # 接收传递的值
    rec = request.POST
    res = {}
    # 判断登陆账号是否存在
    try:
        # =========== 第一步：添加登录账号 ===============
       Protection_gl.objects.create(
            diaodu_rel=rec.get('diaodu_rel'),
            yunwei_dep=rec.get('yunwei_dep'),
            line_name=rec.get('line_name'),
            start_end=rec.get('start_end'),
            service_type=rec.get('service_type'),
            terminal_type=rec.get('terminal_type'),
            interface_type=rec.get('interface_type'),
            channel_type=rec.get('channel_type'),
            route_detail=rec.get('route_detail'),
            guanglan_inroad=rec.get('guanglan_inroad'),
            trans_sys=rec.get('trans_sys'),
            method_page=rec.get('method_page'),
            beizhu=rec.get('beizhu'),
            )
       return JsonResponse({'status': True})
    except Exception as e:
            res['status'] = False
            res['error'] = '写入数据库出现异常，具体原因:'+str(e)
            # 返回
            return JsonResponse(res)


def edit_values(request):
    # 接收传递的值
    rec = request.POST
    # 定义返回值
    res = {'status': True}
    try:
        # 获取当前账号
        obj = Protection_gl.objects.filter(id=rec.get('id')).first()
        obj.diaodu_rel = rec.get('diaodu_rel')
        obj.yunwei_dep = rec.get('yunwei_dep')
        obj.line_name = rec.get('line_name')
        obj.start_end = rec.get('start_end')
        obj.service_type = rec.get('service_type')
        obj.terminal_type = rec.get('terminal_type')
        obj.interface_type = rec.get('interface_type')
        obj.channel_type = rec.get('channel_type')
        obj.route_detail = rec.get('route_detail')
        obj.guanglan_inroad = rec.get('guanglan_inroad')
        obj.trans_sys = rec.get('trans_sys')
        obj.method_page = rec.get('method_page')
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
        Protection_gl.objects.filter(id=rec.get('id')).delete()
        return JsonResponse({'status': True})
    except Exception as e:
        return JsonResponse({'status': False, 'error': '修改密码出现异常，具体原因：' + str(e)})