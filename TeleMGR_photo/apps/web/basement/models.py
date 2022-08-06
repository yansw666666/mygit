from django.db import models
from apps.base_resource.modules.sqlhelper import *


# 等级表
class Level(models.Model):
    level_name = models.CharField('站点等级', primary_key=False,   max_length=50, default='默认值')

    class Meta:
        managed = True
        db_table = 'station_level'
        app_label = 'basement'
        verbose_name = '站点等级'
        verbose_name_plural = '站点等级'

    def __str__(self):
        return '%s' % self.level_name


# 辖区表
class Region(models.Model):
    region_name = models.CharField('所在区域', primary_key=False,   max_length=50, default='默认值')

    class Meta:
        managed = True
        db_table = 'station_region'
        app_label = 'basement'
        verbose_name = '所在区域'
        verbose_name_plural = '所在区域'

    def __str__(self):
        return '%s' % self.region_name


# 辖区表
class stationModel(models.Model):
    model_name = models.CharField('管理模式', null=False,  max_length=50, default='默认值')

    class Meta:
        managed = True
        db_table = 'station_model'
        app_label = 'basement'
        verbose_name = '管理模式'
        verbose_name_plural = '管理模式'

    def __str__(self):
        return '%s' % self.model_name


# 站点表
class Station(models.Model):
    station_name = models.CharField(verbose_name='站点名称', primary_key=True, max_length=50)
    station_model = models.ForeignKey(to='stationModel', on_delete=models.CASCADE)
    station_level = models.ForeignKey(to='Level', on_delete=models.CASCADE)
    station_region = models.ForeignKey(to='Region', on_delete=models.CASCADE)
    build_date = models.DateField(verbose_name='投运日期', null=True)

    class Meta:
        managed = True
        db_table = 'tele_station'
        app_label = 'basement'
        verbose_name = '通信站点'
        verbose_name_plural = '通信站点'

    def __str__(self):
        return '%s' % self.station_name


# 图片
class Shebei_class(models.Model):
    classid = models.CharField(verbose_name='类型名称',  max_length=50, primary_key=True)
    classname = models.CharField(verbose_name='设备类型',  max_length=50, null=False, blank=False)

    class Meta:
        managed = True
        db_table = 'shebei_class'
        app_label = 'basement'
        verbose_name = '设备分类'
        verbose_name_plural = '设备分类'

    def __str__(self):
        return '%s' % self.classname


class stationImage(models.Model):
    image_name = models.CharField(verbose_name='图片名称', max_length=200, null=False, blank=False)
    image_station = models.ForeignKey(to='Station', on_delete=models.CASCADE)
    image_shebei = models.ForeignKey(to='Shebei_class', on_delete=models.CASCADE)
    image_remark = models.CharField(verbose_name='图片标注', max_length=1000, null=True, blank=True)
    image_des = models.CharField(verbose_name='图片描述', max_length=50, null=True, blank=True)
    creat_date = models.DateTimeField(verbose_name='创建时间')

    class Meta:
        managed = True
        db_table = 'stationimage'
        app_label = 'basement'
        verbose_name = '设备图片'
        verbose_name_plural = '设备图片'

    def __str__(self):
        return '%s' % self.image_remark
