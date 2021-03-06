from django.conf.urls import url
from . import views

urlpatterns = [
    #/Discover Brisbane homepage
    url(r'^$', views.index, name='index'),
    url(r'^locations/$', views.locations, name='locations'),
    url(r'^locations/(?P<location_id>[0-9]+)/$', views.location, name='location'),
    url(r'^userview/$',views.userview, name='userview'),
    #register, login, logout
    url(r'^registration/$',views.registration, name='registration'),
    url(r'^login/$',views.ClientLoginView.as_view(), name='login'),
    url(r'^logout/$',views.logoutView, name='logout'),
    #search list
    url(r'^search/$',views.searchLocations, name='searchLocations'),
    #temp
    url(r'^registrationtemp/$',views.ClientFormView.as_view(), name='registrationtemp'),
    #result list
    url(r'^list/collegeList/$', views.collegeList, name='college'),
    url(r'^list/hotelList/$', views.hotelList, name='hotel'),
    url(r'^list/industryList/$', views.industryList, name='industry'),
    url(r'^list/libraryList/$', views.libraryList, name='library'),
    url(r'^list/mallList/$', views.mallList, name='mall'),
    url(r'^list/museumList/$', views.museumList, name='museum'),
    url(r'^list/parkList/$', views.parkList, name='park'),
    url(r'^list/restaurantList/$', views.restaurantList, name='restaurant'),
    url(r'^list/zooList/$', views.zooList, name='zoo'),
    #account
    url(r'^business/$', views.business, name='business'),
    url(r'^student/$', views.student, name='student'),
    url(r'^tourist/$', views.tourist, name='tourist'),
    #feedback
    url(r'^feedback/$', views.FeedbackFormView.as_view(), name='feedback'),
    url(r'^thankyou/$', views.thankyou, name='thankyou'),
]
