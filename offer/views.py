from django.shortcuts import render,redirect
from .models import offer_ride
from datetime import date,datetime
from django.contrib import messages

# Create your views here.
def offer(request):
    if request.user.is_authenticated:
        return render(request,'offer-ride.html')
    else:
        response = redirect('/login.html')
        response.set_cookie('ref',request.path)  
        return response 

def submit(request):
    now=date.today()
    if (datetime.strptime(request.POST['date'],r'%Y-%m-%d').date()>now and int(request.POST['capacity'])>0):
        new=offer_ride()
        new.source=request.POST['from']
        new.dest=request.POST['to']
        new.time=request.POST['time']
        new.date=request.POST['date']
        new.cap=request.POST['capacity']
        new.slon=float(request.POST['slon'])
        new.slat=float(request.POST['slat'])
        new.dlon=float(request.POST['dlon'])
        new.dlat=float(request.POST['dlat'])
        new.offer_maker=request.user.pk
        new.save()
        return redirect('../')
    
    else:
        messages.success(request,'Enter next day or after that')
        return render(request,'offer-ride.html')
    