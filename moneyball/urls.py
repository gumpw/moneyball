from django.conf.urls import patterns, include, url
from django.contrib import admin
from moneyball import settings
from moneyball import views
admin.autodiscover()

urlpatterns = patterns('',
    url(r'^static/(?P<path>.*)$', 'django.views.static.serve',
    { 'document_root': settings.STATIC_ROOT}),
      url(r'^index/$', views.index),
      url(r'^index2/$', views.index2),
      url(r'login',views.login),
)
