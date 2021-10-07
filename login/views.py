from django.shortcuts import render,redirect
from django.contrib.auth import authenticate,logout,login as log
from signup.models import users
from django.contrib import messages
from django.http import JsonResponse


# Create your views here.

def login(request,refer=''):
    if not request.user.is_authenticated:
        email=request.POST['email']
        password=request.POST['password']
        
        try:
            username=users.objects.get(email=email)
            user=authenticate(username=username,password=password,request=request)
            if user is not None and user.active_status:
                log(request,user)
                
                return JsonResponse({"status":1,'refer':refer})
            else:
                return JsonResponse({"status":0})
        
        except:
            return JsonResponse({"status":0})
    
    else:
        logout(request)
        return redirect("/")



