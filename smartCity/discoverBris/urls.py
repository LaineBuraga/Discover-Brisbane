from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^locations/$', views.locations, name='locations'),
    url(r'^locations/(?P<location_id>[0-9]+)/$', views.location, name='location'),
    url(r'^result/$', views.result, name='result'),
    url(r'^test/$', views.test, name='test'),
    url(r'^success/$', views.successView, name='success')
]
