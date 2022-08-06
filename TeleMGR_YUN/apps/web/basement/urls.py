from apps.base_resource.modules.basic_import import *
from basement.views import yunwei as yunwei_views
from basement.views import zdtp as zdtp_views
from basement.views import safety as safety_views
from basement.views import station as station_views
from basement.views import image as image_views


urlpatterns = [

    path('yunwei/', yunwei_views.index, name='yunwei'),
    path('zdtp/', zdtp_views.index, name='zdtp'),
    path('safety/', safety_views.index, name='safety'),

    # 通信站点
    path('station/', station_views.index, name='station'),
    path('station/list/', station_views.list_values, name='list_station'),
    path('station/edit/', station_views.edit_values, name='edit_station'),
    path('station/add/', station_views.add_values, name='add_station'),
    path('station/delete/', station_views.delete_values, name='delete_station'),

    # 编辑图片
    path('image/', image_views.index, name='image'),
    path('image/upload', image_views.upload, name='upload_image'),
    path('image/list/', image_views.list_values, name='list_image'),
    path('image/edit/', image_views.edit_values, name='edit_image'),
    path('image/delete/', image_views.delete_values, name='delete_image'),
    path('image/getshebei', image_views.get_shebei_select, name='get_image_shebei'),
    path('image/getallshebei', image_views.get_shebei_all, name='get_all_shebei'),


]

