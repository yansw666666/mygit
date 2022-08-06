from apps.base_resource.modules.basic_import import *
from power.views import jldy as jldy_views
from power.views import zlfp as zlfp_views
from power.views import gpkg as gpkg_views
from power.views import battery as battery_views
from power.views import ups as ups_views

urlpatterns = [

    path('jldy', jldy_views.index, name='jldy'),
    path('zlfp', zlfp_views.index, name='zlfp'),
    path('gpkg', gpkg_views.index, name='gpkg'),
    path('battery', battery_views.index, name='battery'),
    path('ups', ups_views.index, name='ups'),
]