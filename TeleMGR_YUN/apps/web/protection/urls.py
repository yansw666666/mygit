from apps.base_resource.modules.basic_import import *
from protection.views import line as line_views
from protection.views import shebei as shebei_views


urlpatterns = [
    # 保护业务光缆承载情况
    path('line/', line_views.index, name='line'),
    path('line/list/', line_views.list_values, name='list_line'),
    path('line/edit/', line_views.edit_values, name='edit_line'),
    path('line/add/', line_views.add_values, name='add_line'),
    path('line/del/', line_views.delete_values, name='delete_line'),

    # 保护业务设备承载情况
    path('shebei/', shebei_views.index, name='shebei'),
]