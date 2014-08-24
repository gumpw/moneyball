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
      url(r'^thirdLogin/$',views.thirdLogin),
      url(r'perpetualCalendar',views.perpetualCalendar),
      url(r'doLogin',views.doLogin),
      url(r'register',views.register),
      url(r'doReg',views.doReg),
      url(r'main',views.main),
      url(r'^profile/$', views.profile),


      #url(r'', views.index),

)
