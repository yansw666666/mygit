from django.db import models

# Create your models here.
from django.db import models


class Protection_gl(models.Model):
    id = models.AutoField(primary_key=True)
    diaodu_rel = models.CharField(max_length=255, verbose_name='调度关系')
    yunwei_dep = models.CharField(max_length=255, blank=True, null=True, verbose_name='运维单位')
    start_end = models.CharField(max_length=255, verbose_name='起止站点')
    line_name = models.CharField(max_length=255, verbose_name='线路名称')
    service_type = models.CharField(max_length=255, verbose_name='业务类型')
    terminal_type = models.CharField(max_length=255, verbose_name='装置型号')
    interface_type = models.CharField(max_length=255, verbose_name='接口类型')
    channel_type = models.CharField(max_length=255, verbose_name='通道类型')
    route_detail = models.CharField(max_length=1000, verbose_name='详细路由')
    trans_sys = models.CharField(max_length=255, verbose_name='传输系统')
    guanglan_inroad = models.CharField(max_length=255, verbose_name='途经光缆')
    method_page = models.CharField(max_length=255, verbose_name='方式单号')
    beizhu = models.CharField(max_length=255, blank=True, null=True, verbose_name='备注')

    class Meta:
        managed = True
        app_label = 'protection'
        db_table = 'Protection_gl'
        verbose_name = '保护业务_光缆'
        verbose_name_plural = '保护业务_光缆'
