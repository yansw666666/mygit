from django.db import models

# Create your models here.

class Ddjh_px(models.Model):
    id = models.AutoField(primary_key=True)
    station_name = models.CharField(max_length=255, blank=False, null=False, default='')
    phone_number = models.CharField(max_length=50, blank=False, null=False, default='')
    sb_moduleid = models.CharField(max_length=50, blank=True, null=True, default='')
    sb_modulepair = models.CharField(max_length=50, blank=True, null=True, default='')
    wx_moduleid = models.CharField(max_length=50, blank=True, null=True, default='')
    wx_modulepair = models.CharField(max_length=50, blank=True, null=True, default='')
    rec_moduleid = models.CharField(max_length=50, blank=True, null=True, default='')
    rec_modulepair = models.CharField(max_length=50, blank=True, null=True, default='')
    nm_moduleid = models.CharField(max_length=50, blank=True, null=True, default='')
    nm_modulepair = models.CharField(max_length=50,  blank=True, null=True, default='')
    fy_moduleid = models.CharField(max_length=50, blank=True, null=True, default='')
    fy_modulepair = models.CharField(max_length=50,  blank=True, null=True, default='')
    beizhu = models.CharField(max_length=255, blank=True, null=True, default='')
    setup_date = models.DateField(null=True, blank=True)

    class Meta:
        managed = True
        db_table = 'Ddjh_px'
        app_label = 'exchange'
        verbose_name = '调度交换配线'
        verbose_name_plural = '调度交换配线'