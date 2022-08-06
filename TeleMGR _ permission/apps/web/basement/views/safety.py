from apps.base_resource.modules.basic_import import *


def index(request):
    return render(request, 'basement/safety.html')
