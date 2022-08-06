from apps.base_resource.modules.basic_import import *
from basement.models import Station, Region, Level, stationModel


def index(request):
    return render(request, 'basement/station.html')


def list_values(request):
    # 接收前台传递的数据
    page = int(request.POST.get('page'))
    limit = int(request.POST.get('limit'))
    q_str = request.POST.get('q_str')
    init = request.POST.get('init')
    #  ====================方法一：原生SQL语句===============
    list1 = ['station_name', 'model_name', 'level_name', 'region_name', 'build_date',
             'level_id', 'model_id', 'region_id']
    if init == '1':
        sql = " select station_name,model_name,level_name,region_name,build_date," \
              "station_level_id, station_model_id, station_region_id " \
              " from tele_station,station_region,station_level,station_model " \
              " where tele_station.station_level_id = station_level.id " \
              " and tele_station.station_region_id = station_region.id " \
              " and tele_station.station_model_id = station_model.id"
    if init == '2':
        sql = " select station_name,model_name,level_name,region_name,build_date," \
              "station_level_id, station_model_id, station_region_id " \
              " from tele_station,station_region,station_level,station_model " \
              " where tele_station.station_level_id = station_level.id " \
              " and tele_station.station_region_id = station_region.id " \
              " and tele_station.station_model_id = station_model.id" \
              " and (tele_station.station_name like'%"+q_str +"%'or station_model.model_name like'%"+q_str + \
              "%'or station_level.level_name like '%"+q_str+"%'or station_region.region_name like'%"+q_str+"%')"

    objs = sqlhelper.get_db_data_dict(sql, list1)['data']
    # 获取所有的登陆账号
    '''
    objs = list(Station.objects.filter(Q(station_level_id__level_name__icontains=q_str) |
                                  Q(station_region_id__region_name__icontains=q_str) |
                                  Q(station_model_id__model_name__icontains=q_str) |
                                  Q(station_name__icontains=q_str)
                                  ).values('station_name', 'model_name', 'region_name', 'level_name', 'build_date'),)
    '''
    # 分页
    one_page_data = objs[(page-1)*limit:page*limit]
    # 返回
    return JsonResponse({'code': 0, 'count': len(objs), 'data': one_page_data})


def add_values(request):
    # 接收传递的值
    rec = request.POST
    res = {}
    # 判断登陆账号是否存在
    try:
        # =========== 第一步：添加登录账号 ===============
       Station.objects.create(
            station_name=rec.get('station_name'),
            station_level_id=rec.get('station_level'),
            station_model_id=rec.get('station_mode'),
            station_region_id=rec.get('station_region'),
            build_date=rec.get('build_date'),
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
        obj = Station.objects.filter(station_name=rec.get('station_name')).first()
        obj.station_level_id = rec.get('station_level')
        obj.station_model_id = rec.get('station_mode')
        obj.station_region_id = rec.get('station_region')
        obj.build_date = rec.get('build_date')
        obj.save()
        res = {'status': True}
    except Exception as e:
        res['status'] = False
        res['error'] = '添加站点写入数据库出现异常，具体原因:' + str(e)
    # 返回
    return JsonResponse(res)


def delete_values(request):
    rec = request.POST
    try:
        Station.objects.filter(station_name=rec.get('station_name')).delete()
        return JsonResponse({'status': True})
    except Exception as e:
        return JsonResponse({'status': False, 'error': '删除站点出现异常，具体原因：' + str(e)})
