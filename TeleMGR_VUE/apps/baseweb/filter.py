from django_filters import FilterSet, filters
from baseweb.models import Region, Level, Model, Station, Classify, stationImage


class RegionFilter(FilterSet):

    class Meta:
        model = Region
        fields = ('name',)


class LevelFilter(FilterSet):

    class Meta:
        model = Level
        fields = ('name',)


class ModelFilter(FilterSet):

    class Meta:
        model = Model
        fields = ('name',)


class StationFilter(FilterSet):

    class Meta:
        model = Station
        fields = ('name', 'build_date', 'level', 'model', 'region')


class ClassifyFilter(FilterSet):

    class Meta:
        model = Classify
        fields = ('name',)


class ImageFilter(FilterSet):

    class Meta:
        model = stationImage
        fields = ('remark', 'des', 'create_date', 'shebei', 'station')
