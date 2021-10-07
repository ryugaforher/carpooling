from django.core import paginator
from django.shortcuts import redirect, render
from django.db import models
from offer.models import offer_ride
from join.models import p_rides
from datetime import datetime,timedelta
from .models import message
from django.core.paginator import Paginator

# Create your views here.

def noti(request,page_num):
    id=request.user.pk
    temp_time=datetime.now()
    temp_obj=offer_ride.objects.filter(offer_maker=id).filter( models.Q(date__gt=temp_time.date()) | models.Q(
        date=temp_time.date(),
        time__gt=(temp_time+timedelta(hours=2)).time())
    )
    
    temp2=[]
    if temp_obj.exists():
        for temp in temp_obj:
            temp3=p_rides.objects.filter(ride_num=temp.pk,confirmed=False)
            
            for x in temp3:
                temp2.append((x,temp.date))
    
    nots=message.objects.filter(msg_p=request.user.pk).order_by('-time')
    temp3=[]
    for notis in nots:
        temp3.append(notis.text)
    temp4=temp2+temp3
    paginator=Paginator(temp4,5)
    req_page=paginator.page(page_num)
    temp2=[]
    temp3=[]
    for x in req_page:
        if isinstance(x,str):
            temp3.append(x)
        else:
            temp2.append(x)
    return render(request,'notfs.html',{'nots':temp2,'notis':temp3,'page':req_page})

