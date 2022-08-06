from apps.base_resource.modules.basic_import import *
from userweb.models import Menu


def index(request):
    return render(request, 'user/menu.html')


def list_values(request):
    # 获取所有的菜单信息
    # 获取查询的字符串
    q_str = request.POST.get('q_str', '')
    # 获取对象
    obj = list(Menu.objects.filter(title__icontains=q_str).values().order_by('order'))
    return JsonResponse({'data': obj, 'status': True})


def add_values(request):
    #  获取传递的值
    rec = request.POST
    # 判断是否存在
    is_exists = Menu.objects.filter(title__icontains=rec.get('title')).exists()
    if is_exists:
        return JsonResponse({'status': False, 'error': '当前菜单标题已存在'})
    try:
        Menu.objects.create(title=rec.get('title'), icon=rec.get('icon'), order=rec.get('order'))
        return JsonResponse({'status': True})
    except Exception as e:
        return JsonResponse({'status': False, 'error': '添加菜单出现异常'+str(e)})


def delete_values(request):
    rec = request.POST
    try:
        Menu.objects.filter(id=rec.get('id')).delete()
        return JsonResponse({'status': True})
    except Exception as e:
        return JsonResponse({'status': False, 'error': '修改菜单出现异常' + str(e)})


def edit_values(request):
    rec = request.POST
    try:
        # 获取当前的对象
        obj = Menu.objects.get(id=rec.get('id'))
        # 修改
        obj.title = rec.get('title')
        obj.icon = rec.get('icon')
        obj.order = rec.get('order')
        # 保存
        obj.save()
        # 返回
        return JsonResponse({'status': True})
    except Exception as e:
        return JsonResponse({'status': False, 'error': '修改菜单出现异常'+str(e)})


def list_for_select(request):
    objs = list(Menu.objects.all().values('id', 'title'))
    data = []
    for item in objs:
        data.append({'name': item['title'], 'value': item['id']})
    return JsonResponse({'data': data})
