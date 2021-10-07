from django.urls import path
from . import views

urlpatterns=[
    path('<page_num>',views.noti,name="notifications")
]