"""TeleMGR URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""

from django.contrib import admin
from django.urls import path, include


urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('userweb.urls')),
    path('user/', include('userweb.urls')),
    path('main/', include('mainweb.urls')),
    path('protection/', include('protection.urls')),
    path('meeting/', include('meeting.urls')),
    path('exchange/', include('exchange.urls')),
    path('transfom/', include('transform.urls')),
    path('power/', include('power.urls')),
    path('basement/', include('basement.urls')),


]


