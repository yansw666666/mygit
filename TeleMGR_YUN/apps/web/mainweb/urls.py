from django.urls import include
from django.urls import path
from mainweb import views as main_views

urlpatterns = [
    path('', main_views.index, name='main'),
    path('edit/info/', main_views.edit_value, name="main_edit_info"),
    path('change/pwd/', main_views.change_pass, name="main_change_pwd"),
    path('logout/', main_views.user_logout, name="main_logout"),
]