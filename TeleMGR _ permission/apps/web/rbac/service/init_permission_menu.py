from userweb.models import Permission
from django.conf import settings

def init_data(request, obj_user):
    """
    根据当前用户的信息获取权限和menu
    :param request: 客户端的请求
    :param obj: 当前用户
    :return:
    """
    # ======= 登录后获取当前用户的权限以及菜单 ======
    permission_queryset = list(Permission.objects.filter(roles__account__loginid=obj_user.loginid).values \
                                   ('id', 'url', 'order', 'title', 'menu_id', 'menu__icon', 'menu__title',
                                    'menu__order').
                               order_by('menu_id', 'order').distinct())

    # =====任务1：构建当前用户拥有的权限列表=================
    permission_list = []
    for item in permission_queryset:
        permission_list.append(item['url'])
    # 把AUTH_WHITE_URL_LIST添加进去
    permission_list.extend(settings.AUTH_WHITE_URL_LIST)

    # =====任务2：构建当前用户登录后的侧边栏=================
    menu_dict = {}
    # 遍历
    for item in permission_queryset:
        menu_id = item['menu_id']
        if menu_id not in menu_dict:
            menu_dict[menu_id] = {
                'title': item['menu__title'],
                'icon': item['menu__icon'],
                'order': item['menu__order'],
                'children': [{
                    'id': item['id'],
                    'title': item['title'],
                    'url': item['url'],
                }]
            }
        else:
            menu_dict[menu_id]['children'].append({
                'id': item['id'],
                'title': item['title'],
                'url': item['url'],
            })

    # 存储在session里
    request.session['permission_list'] = permission_list
    request.session['menu_dict'] = menu_dict