from django.urls import path
from . import views

urlpatterns=[
    path('',views.join,name='join'),
    path('find',views.find,name='find'),
    path('submit/<ride_id>',views.join_ride,name="join_ride")
]