
from apps.base_resource.modules.basic_import import *
from basement.models import stationImage, Shebei_class
from apps.base_resource.modules.myupload import upload_file


def index(request):
    return render(request, 'basement/image.html')


def upload(request):
    """实现图片的上传"""
    # 接受传递过来的文件
    rev_image = request.FILES.get('file')
    path = "images"
    # 调用后台通用模块写入文件
    response = upload_file(rev_image, path, type=1)
    # 如果写入文件正确，继续把文件信息写入到数据库
    if response.get('status'):
        # 写入数据库
        try:
            stationImage.objects.create(image_name=response.get('data'),
                                        creat_date=datetime.now().strftime("%Y-%m-%d"),
                                        )
        except Exception as e:
            response['status'] = False
            response['error'] = "文件信息写入数据库出现异常，具体原因：" + str(e)
    return JsonResponse(response)


def list_values(request):
    # 获取分页的两个变量
    page = int(request.POST.get('page'))
    limit = int(request.POST.get('limit'))
    sta = request.POST.get('q_sta')
    shb = request.POST.get('q_shb')
    shm = request.POST.get('q_shm')
    status = request.POST.get('status')
    objs = []
    # objs = list(stationImage.objects.all().values())py
    if status == '1':  # 初始化状态
        objs = list(stationImage.objects.all().order_by('-creat_date').values())
    if status == '2':  # 查询状态
        objs = list(stationImage.objects.filter(image_shebei_id__classname__icontains=shb,
                                                image_station_id__station_name__icontains=sta,
                                                image_des__icontains=shm).order_by('-creat_date').values())

    for index, value in enumerate(objs):
        objs[index]['url'] = settings.MEDIA_URL+'images'+os.path.sep + value.get('image_name')

        # 实现分页
    one_page_data = objs[(page - 1) * limit: page * limit]

        # 返回
    return JsonResponse({'code': 1, 'count': len(objs), 'data': one_page_data})


def edit_values(request):
    try:
        rec = request.POST
        obj = stationImage.objects.get(id=rec.get('image_id'))
        obj.image_remark = rec.get('image_name')
        obj.image_des = rec.get('image_des')
        obj.image_station_id = rec.get('image_station')
        obj.image_shebei_id = rec.get('select')
        obj.creat_date = (datetime.now()).strftime('%Y-%m-%d')
        obj.save()
        return JsonResponse({'status': True})
    except Exception as e:
        return JsonResponse({'status': False, 'error': '写入数据库出现错误：'+str(e)})


def get_shebei_select(request):
    try:
        obj = Shebei_class.objects.get(classid=request.POST.get('id'))
        data = {'name': obj.classname, 'value': obj.classid}
        print(data)
        return JsonResponse({'data': data})
    except Exception as e:
        return JsonResponse({'status': False, 'error': '读取数据出现错误：'+str(e)})


def get_shebei_all(request):
    try:
        first_list = ['配线资料', '传输设备', '电源系统', '终端设备', '交换设备', '监控系统', '空调系统', '机房环境']
        data = []
        children = []
        for name in first_list:
            data.append({'name': name, 'children': children})

        objs = list(Shebei_class.objects.all().values())
        for obj in objs:
            if obj['classid'].startswith('1'):
                data[0]['children'].append({'name': obj['classname'], 'value': obj['classid']})
            if obj['classid'].startswith('2'):
                data[1]['children'].append({'name': obj['classname'], 'value': obj['classid']})
            if obj['classid'].startswith('3'):
                data[2]['children'].append({'name': obj['classname'], 'value': obj['classid']})
            if obj['classid'].startswith('4'):
                data[3]['children'].append({'name': obj['classname'], 'value': obj['classid']})
            if obj['classid'].startswith('5'):
                data[4]['children'].append({'name': obj['classname'], 'value': obj['classid']})
            if obj['classid'].startswith('6'):
                data[5]['children'].append({'name': obj['classname'], 'value': obj['classid']})
            if obj['classid'].startswith('7'):
                data[6]['children'].append({'name': obj['classname'], 'value': obj['classid']})
            if obj['classid'].startswith('8'):
                data[7]['children'].append({'name': obj['classname'], 'value': obj['classid']})

        print(data)



        # temp_dict['children'] = []
        # # === 遍历权限 ===
        # for val in obj_permission:
        #     # 判读权限是否属于当前菜单
        #     if val.get('menu_id') == item.get('id'):
        #         # 添加到temp_dict的children的list中
        #         temp_dict['children'].append({'id': val.get('order'), 'title': val.get('title'),
        #                                       'url': val.get('url'), 'node_id': val.get('id'),
        #                                       'p_id': item.get('id'), 'p_title': item.get('title')})
        #
        # # 附加到data中
        # data.append(temp_dict)
        return JsonResponse({'data': data})
    except Exception as e:
        return JsonResponse({'status': False, 'error': '读取数据出现错误：'+str(e)})


def delete_values(request):
    rec = request.POST
    obj = stationImage.objects.filter(id=rec.get('id')).first()
    res = {'status': True}
    # ==== 1. 删除文件  ======
    file_name = settings.MEDIA_ROOT + os.path.sep + 'images' + os.path.sep + obj.image_name
    # 判断是否存在
    if os.path.exists(file_name):
        try:
            os.remove(file_name)
        except Exception as e:
            res['status'] = False
            res['error'] = "删除文件出现异常，具体原因：" + str(e)
    try:
        stationImage.objects.get(id=request.POST.get('id')).delete()
    except Exception as e:
        res['status'] = False
        res['error'] = "删除数据库记录出现异常，具体原因：" + str(e)
    return JsonResponse(res)
