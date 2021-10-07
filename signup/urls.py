from django.urls import path
from . import views

urlpatterns=[
    path('',views.register,name="register"),
    path('<temp_text>/<uid>',views.registration,name="registration")
]