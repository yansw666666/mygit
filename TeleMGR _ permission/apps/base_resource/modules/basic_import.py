# 引入常见的基础模块
from django.shortcuts import render, redirect, reverse
# 插入Django.http中的模块
from django.http import JsonResponse, HttpResponse
# 插入时间日期
from datetime import datetime, date, timedelta
# 插入Q,Sum
from django.db.models import Q, Sum
# 插入随机函数
import random
# 插入setting
from django.conf import settings
# 引入数据库通用类
from apps.base_resource.modules import sqlhelper
# 引入os模块
import os
# 引入uuid
import uuid
from django.urls import include
from django.urls import path
from apps.base_resource.modules.basetools import *
import json