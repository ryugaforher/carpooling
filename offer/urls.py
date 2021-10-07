from django.urls import path,include
from . import views

urlpatterns=[
    path('',views.offer,name="offer"),
    path('submit',views.submit,name="submit")
]