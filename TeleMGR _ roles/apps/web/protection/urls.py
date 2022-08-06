from apps.base_resource.modules.basic_import import *
from protection.views import line as line_views
from protection.views import shebei as shebei_views


urlpatterns = [
    # 保护业务光缆承载情况
    path('line/', line_views.index, name='line'),

    # 保护业务设备承载情况
    path('shebei/', shebei_views.index, name='shebei'),
]