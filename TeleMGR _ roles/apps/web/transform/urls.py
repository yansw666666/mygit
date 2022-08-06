from apps.base_resource.modules.basic_import import *
from transform.views import zhongxing as zhongxing_views
from transform.views import fenghuo as fenghuo_views
from transform.views import huawei as huawei_views

urlpatterns = [

    path('zhongxing/', zhongxing_views.index, name='zhongxing'),
    path('fenghuo/', fenghuo_views.index, name='fenghuo'),
    path('huawei/', huawei_views.index, name='huawei'),

]