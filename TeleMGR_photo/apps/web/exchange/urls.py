from apps.base_resource.modules.basic_import import *
from exchange.views import ddjh as ddjh_views
from exchange.views import xzjh as xzjh_views

urlpatterns = [
    # 调度交换配线资料增删改查
    path('ddjh/', ddjh_views.index, name='ddjh'),
    path('ddjh/list/', ddjh_views.list_values, name='list_ddjh'),
    path('ddjh/edit/', ddjh_views.edit_values, name='edit_ddjh'),
    path('ddjh/add/', ddjh_views.add_values, name='add_ddjh'),
    path('ddjh/del/', ddjh_views.delete_values, name='delete_ddjh'),


    # 行政交换配线资料增删改查
    path('xzjh/', xzjh_views.index, name='xzjh'),

]