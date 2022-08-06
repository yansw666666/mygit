from apps.base_resource.modules.basic_import import *
from exchange.views import ddjh as ddjh_views
from exchange.views import xzjh as xzjh_views

urlpatterns = [

    path('ddjh/', ddjh_views.index, name='ddjh'),

    path('xzjh/', xzjh_views.index, name='xzjh'),

]