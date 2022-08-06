from django.db import models

#  图片表，站点表，设备表，地区表，模式表，登记表


# 图片表
class stationImage(models.Model):
    name = models.CharField(verbose_name='图片名称', max_length=200, null=False, blank=False)
    station = models.ForeignKey(to='Station', on_delete=models.CASCADE)
    shebei = models.ForeignKey(to='Classify', on_delete=models.CASCADE)
    remark = models.CharField(verbose_name='图片标注', max_length=1000, null=True, blank=True)
    des = models.CharField(verbose_name='图片描述', max_length=50, null=True, blank=True)
    create_date = models.DateTimeField(verbose_name='创建时间')

    class Meta:
        managed = True
        db_table = 'tele_image'
        app_label = 'baseweb'
        verbose_name = '通信图片'
        verbose_name_plural = '通信图片'

    def __str__(self):
        return '%s' % self.remark


# 站点表
class Station(models.Model):
    name = models.CharField(verbose_name='站点名称', primary_key=True, max_length=50)
    model = models.ForeignKey(to='Model', on_delete=models.CASCADE)
    level = models.ForeignKey(to='Level', on_delete=models.CASCADE)
    region = models.ForeignKey(to='Region', on_delete=models.CASCADE)
    build_date = models.DateField(verbose_name='投运日期', null=True)

    class Meta:
        managed = True
        db_table = 'tele_station'
        app_label = 'baseweb'
        verbose_name = '通信站点'
        verbose_name_plural = '通信站点'

    def __str__(self):
        return '%s' % self.name


# 设备表
class Classify(models.Model):
    id = models.CharField(verbose_name='类型名称',  max_length=50, primary_key=True)
    name = models.CharField(verbose_name='设备类型',  max_length=50, null=False, blank=False)

    class Meta:
        managed = True
        db_table = 'shebei_classify'
        app_label = 'baseweb'
        verbose_name = '设备分类'
        verbose_name_plural = '设备分类'

    def __str__(self):
        return '%s' % self.name


# 等级表
class Level(models.Model):
    name = models.CharField('站点等级', primary_key=False,   max_length=50, default='默认值')

    class Meta:
        managed = True
        db_table = 'station_level'
        app_label = 'baseweb'
        verbose_name = '站点等级'
        verbose_name_plural = '站点等级'

    def __str__(self):
        return '%s' % self.name


# 辖区表
class Region(models.Model):
    name = models.CharField('所在区域', primary_key=False,   max_length=50, default='默认值')

    class Meta:
        managed = True
        db_table = 'station_region'
        app_label = 'baseweb'
        verbose_name = '所在区域'
        verbose_name_plural = '所在区域'

    def __str__(self):
        return '%s' % self.name


# 辖区表
class Model(models.Model):
    name = models.CharField('管理模式', null=False,  max_length=50, default='默认值')

    class Meta:
        managed = True
        db_table = 'station_model'
        app_label = 'baseweb'
        verbose_name = '管理模式'
        verbose_name_plural = '管理模式'

    def __str__(self):
        return '%s' % self.name


