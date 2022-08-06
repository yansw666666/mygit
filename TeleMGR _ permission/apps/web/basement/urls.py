from apps.base_resource.modules.basic_import import *
from basement.views import yunwei as yunwei_views
from basement.views import glzl as glzl_views
from basement.views import safety as safety_views
urlpatterns = [

    path('yunwei/', yunwei_views.index, name='yunwei'),
    path('glzl/', glzl_views.index, name='glzl'),
    path('safety/', safety_views.index, name='safety'),

]
