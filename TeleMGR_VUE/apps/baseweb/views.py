from rest_framework.viewsets import ModelViewSet   # 封装完成的ModelViewSet视图集
from baseweb.models import Region, Level, Model, Station, Classify, stationImage  # 导入具体的类
from baseweb.serializer import RegionSerializer, LevelSerializer, ModelSerializer, StationSerializer, \
        ClassifySerializer, ImageSerializer
from baseweb.filter import RegionFilter, LevelFilter, ModelFilter, StationFilter, ClassifyFilter, ImageFilter


# Region视图
class Regionviewset(ModelViewSet):
    """
            create:
            创建地区信息
            retrieve:
            获取地区信息详情数据
            update:
            完整更新地区信息
            partial_update:
            部分更新地区信息
            destroy:
            删除地区信息
            list:
            获取所有地区信息

            """
    queryset = Region.objects.all()
    serializer_class = RegionSerializer
    # 指定筛选的类
    filter_class = RegionFilter
    search_fields = ('name',)


class Moshiviewset(ModelViewSet):
    queryset = Model.objects.all()
    serializer_class = ModelSerializer
    # 指定筛选的类
    filter_class = ModelFilter
    # 指定查找匹配的字段
    search_fields = ('name',)


class Stationviewset(ModelViewSet):
    queryset = Station.objects.all()
    serializer_class = StationSerializer
    # 指定筛选的类
    filter_class = StationFilter
    # 指定查找匹配的字段
    search_fields = ('name', 'build_date')


class Levelviewset(ModelViewSet):
    queryset = Level.objects.all()
    serializer_class = LevelSerializer
    # 指定筛选的类
    filter_class = LevelFilter
    # 指定查找匹配的字段
    search_fields = ('name',)


class Classifyviewset(ModelViewSet):
    queryset = Classify.objects.all()
    serializer_class = ClassifySerializer
    # 指定筛选的类
    filter_class = ClassifyFilter
    # 指定查找匹配的字段
    search_fields = ('name',)


class Imageviewset(ModelViewSet):
    queryset = stationImage.objects.all()
    serializer_class = ImageSerializer
    # 指定筛选的类
    filter_class = ImageFilter
    # 指定查找匹配的字段
    search_fields = ('remark', 'des', 'create_date')
