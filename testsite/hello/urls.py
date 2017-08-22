from django.conf.urls import url

from hello.views import HomePageView

urlpatterns = [
    url(r'^$', HomePageView.as_view(), name='index')
]