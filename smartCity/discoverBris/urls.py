from django.conf.urls import url
from . import views

urlpatterns = [
    #/discoverBris/
    url(r'^$', views.index, name='index'),
    url(r'^locations/$', views.locations, name='locations'),
    url(r'^locations/(?P<location_id>[0-9]+)/$', views.location, name='location'),
    url(r'^collegeList/$', views.collegeList, name='college'),
    url(r'^parkList/$', views.parkList, name='park'),

    #static pages
    url(r'^success/$', views.successView, name='success')

        #TEST/discoverBris/80   *some id
        #url(r'^(?P<client_id>[0-9]+)/$', views.detail, name='detail'),
        #url(r'^(?P<client_id>[0-9]+)/$', views.successView, name='success'),

]
