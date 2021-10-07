from django.urls import path
from . import views

urlpatterns=[
    path('<path:refer>',views.login,name='login2'),
    path('',views.login,name='login2')

]