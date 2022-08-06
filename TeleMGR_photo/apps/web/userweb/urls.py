from apps.base_resource.modules.basic_import import *
from userweb.views import login as login_views
from userweb.views import roles as roles_views
from userweb.views import permission as permission_views
from userweb.views import account as user_views
from userweb.views import menu as menu_views
from django.urls import path

urlpatterns = [
    # =====登录账号========
    path('account/', user_views.index, name='account'),
    path('account/list/', user_views.list_values, name='list_account'),
    path('account/add/', user_views.add_values, name='add_account'),
    path('account/edit/', user_views.edit_values, name='edit_account'),
    path('change/password/', user_views.edit_loginpwd, name='edit_loginpwd'),
    path('account/changestatus/', user_views.change_status, name='change_status'),
    path('account/delete/', user_views.delete_values, name='delete_account'),

    # ======登录页面========
    path('', login_views.index, name='login'),
    path('login/', login_views.index, name='login'),
    path('login/handle/', login_views.login_handle, name='login_handle'),

    # ======角色管理========
    path('roles/', roles_views.index, name='roles'),
    path('roles/list/', roles_views.list_values, name='list_roles'),
    path('roels/add/', roles_views.add_values, name='add_roles'),
    path('roles/edit/', roles_views.edit_values, name='edit_roles'),
    path('roles/delete/', roles_views.delete_values, name='delete_roles'),
    path('roles/select/', roles_views.get_roles_select, name='select_roles'),
    path('roles/update/permission/', roles_views.update_permission, name="update_roles_permission"),
    # =====登录账号========
    path('menu/', menu_views.index, name='menu'),
    path('menu/list/', menu_views.list_values, name='list_menu'),
    path('menu/add/', menu_views.add_values, name='add_menu'),
    path('menu/edit/', menu_views.edit_values, name='edit_menu'),
    path('menu/delete/', menu_views.delete_values, name='delete_menu'),
    path('menu/select/', menu_views.list_for_select, name='select_menu'),
    # ======权限管理========
    path('permission/', permission_views.index, name='permission'),
    path('permission/list/', permission_views.list_values, name='list_permission'),
    path('permission/add/', permission_views.add_values, name='add_permission'),
    path('permission/edit/', permission_views.edit_values, name='edit_permission'),
    path('permission/delete/', permission_views.delete_values, name='delete_permission'),

]
