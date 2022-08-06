from apps.base_resource.modules.basic_import import *
from meeting.views import shipin as shipin_views
from meeting.views import yinpin as yinpin_views

urlpatterns = [

    path('shipin/', shipin_views.index, name='shipin'),
    path('yinpin/', yinpin_views.index, name='yinpin'),

]