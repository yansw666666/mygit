# ============== 导入模块 ===============
from django.urls import path
from rest_framework.routers import DefaultRouter
from baseweb.views import Regionviewset, Levelviewset, Moshiviewset, Stationviewset, Classifyviewset, Imageviewset

# ==== 1. 实例化一个 DefaultRouter ===
router = DefaultRouter()

# 2、============注册相应的URL===============
# 注册region对象
router.register('regions', Regionviewset, basename='regions')  # http://127.0.0.1:8000/api/v1/regions/
# 注册level对象
router.register('levels', Levelviewset, basename='levels')  # http://127.0.0.1:8000/api/v1/levels/
# 注册model对象
router.register('models', Moshiviewset, basename='models')  # http://127.0.0.1:8000/api/v1/models/
# 注册station对象
router.register('stations', Stationviewset, basename='stations')  # http://127.0.0.1:8000/api/v1/stations/
# 注册classify对象
router.register('classifys', Classifyviewset, basename='classifys')  # http://127.0.0.1:8000/api/v1/classifys/
# 注册站点image对象
router.register('images', Imageviewset, basename='images')  # http://127.0.0.1:8000/api/v1/images/

urlpatterns = [

]
urlpatterns += router.urls