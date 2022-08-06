from django.db import models

# Create your models here.
# 用户登录账号-----login
# 字段：loginID，loginpwd,name,status,department,position,mobile,email,last_login,create_time,edit_time


class Account(models.Model):
    loginid = models.CharField(verbose_name='登录账号', max_length=20, primary_key=True, null=False, blank=False)
    loginpwd = models.CharField(verbose_name='密码', max_length=200, null=False, blank=False)
    name = models.CharField(verbose_name='姓名', max_length=50, null=False, blank=False)
    status = models.BooleanField(verbose_name='状态',  null=False, blank=False, default=0)
    department = models.CharField(verbose_name='部门', max_length=50, null=True, blank=True, default=None)
    position = models.CharField(verbose_name='职位', max_length=50, null=True, blank=True, default=None)
    mobile = models.CharField(verbose_name='手机号码', max_length=50, null=True, blank=True, default=None)
    email = models.CharField(verbose_name='邮箱地址', max_length=50, null=True, blank=True, default=None)
    last_login = models.DateTimeField(verbose_name='上次登录时间', null=True, blank=True, default=None)
    create_time = models.DateTimeField(verbose_name='创建时间', null=True, blank=True, default=None)
    edit_time = models.DateTimeField(verbose_name='修改时间', null=True, blank=True, default=None)

    class Meta:
        managed = True
        db_table = 'user_account'
        app_label = 'userweb'
        verbose_name_plural = 'Account'
        verbose_name = 'Account'

    def __str__(self):
        return self.name

    #  角色信息 ：id,name,desc,account


class Roles(models.Model):
    id = models.AutoField(verbose_name='编号', primary_key=True, null=False, blank=False)
    name = models.CharField(verbose_name='名称', max_length=50, null=False, blank=False, unique=False)
    account = models.ManyToManyField(verbose_name='账号', to=Account, null=False)
    desc = models.CharField(verbose_name='角色描述', max_length=200, null=True, blank=True, default=None)

    class Meta:
        managed = True
        db_table = 'usr_Roles'
        app_label = 'userweb'
        verbose_name_plural = '角色'
        verbose_name = '角色'

    def __str__(self):
        return '%s' % self.name


# 顶级菜单 ,id,title,icon,order
class Menu(models.Model):
    title = models.CharField(verbose_name='名称', max_length=100, null=False, blank=False, unique=True)
    icon = models.CharField(verbose_name='图标', max_length=100, null=True, default=None)
    order = models.IntegerField(verbose_name='排序', null=True, blank=True, default=1)

    class Meta:
        managed = True
        db_table = 'user_Menu'
        app_label = 'userweb'
        verbose_name_plural = '菜单'
        verbose_name = '菜单'

    def __str__(self):
        return '%s' % self.title

# 权限：Permission,【id,title,url,roles,menu,order】


class Permission(models.Model):
    title = models.CharField(verbose_name='名称', max_length=100, null=False, blank=False)
    url = models.CharField(verbose_name='url', max_length=200, null=True, blank=True, default=None)
    roles = models.ManyToManyField(verbose_name='角色', to=Roles, null=True, default=None)
    menu = models.ForeignKey(verbose_name='菜单', to=Menu, on_delete=models.PROTECT, null=True, default=None)
    order = models.IntegerField(verbose_name='排序', unique=True, null=True, blank=True, default=1)

    class Meta:
        managed = True
        app_label = 'userweb'
        db_table = 'user_Permission'
        verbose_name_plural = '权限'
        verbose_name = '权限'

    def __str__(self):
        return '%s' % self.title





