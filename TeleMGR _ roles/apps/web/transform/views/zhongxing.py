from apps.base_resource.modules.basic_import import *

# Create your views here.


def index(request):
    return render(request, 'transform/zhongxing.html')