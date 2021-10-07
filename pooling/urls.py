"""pooling URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from math import log
from django.contrib import admin
from django.urls import path,include
from . import views
from django.conf import settings
from django.conf.urls.static import static


urlpatterns = [
    path('admin/', admin.site.urls),
    path('',views.home,name="home"),
    path('signup.html',views.signup,name="signup"),
    path('login.html/<path:refer>',views.login,name="login1"),
    path('login.html',views.login,name="login"),
    path('register',include('signup.urls')),
    path('registration/',include('signup.urls')),
    path('login',include('login.urls')),
    path('logout',include('login.urls')),
    path('offer-ride/',include('offer.urls')),
    path('join-ride/',include('join.urls')),
    path('profile.html',views.profile,name="profile"),
    path('profile',views.profile_change,name="profile_change"),
    path('reset/<hash>/<uid>',views.pass_change,name="password_change"),
    path('reset',views.reset,name="reset"),
    path('change-password',views.pass_change_final,name="pass_change_final"),
    path('notfs.html/',include('dbase.urls')),
    path('accept/<id>',views.accept,name="accept")
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

