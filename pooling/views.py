from django.shortcuts import redirect, render
from signup.models import users
from join.models import p_rides
from offer.models import offer_ride
from django.contrib.auth.tokens import PasswordResetTokenGenerator
from django.utils import six
from django.utils.http import urlsafe_base64_encode, urlsafe_base64_decode
from django.utils.encoding import force_bytes,force_text
from django.contrib.auth.hashers import make_password
from django.http import JsonResponse
from django.core.mail import send_mail
from django.views.decorators.csrf import csrf_exempt
from datetime import datetime,timedelta,timezone
from django.db import models
from dbase.models import p_reset_limit,message

def send(req): #send email for password change
        
    activation_token= token()
    
    str_hash=activation_token.make_token(req)
    send_mail(
    'Password Reset',
    'To reset the password, click this link http://localhost:8000/reset/'+str_hash+'/'+urlsafe_base64_encode(force_bytes(req.pk)),
    'smtpservice4@gmail.com',
    [req.email,]

    )
        

class token(PasswordResetTokenGenerator):
    def _make_hash_value(self,user,timestamp):
        return (
            six.text_type(user.pk)+six.text_type(timestamp)
        )


def home(request):
    return render(request,"home.html")

def signup(request):
    return render(request,"signup.html")

def login(request,refer=''):
    
    return render(request,"login.html",{'refer':refer})

def profile_change(request):  #Editing Profile
    obj=users.objects.get(email=request.user.email)
    try:
        filer=request.FILES['pic']
        if filer.name.split('.')[-1] in ['jpg','jpeg','png']:
            obj.p_pic=filer 
    except:
        pass
    
    obj.first_name=request.POST['f-name']
    obj.last_name=request.POST['l-name']
    obj.address=request.POST['input-address']
    obj.save()
    return redirect('/profile.html')
     

def profile(request):   #profile page
    id=request.user.pk
    temp_time=datetime.now()
    temp_obj=offer_ride.objects.filter(offer_maker=id).filter( models.Q(date__gt=temp_time.date()) | models.Q(
        date=temp_time.date(),
        time__gt=(temp_time+timedelta(hours=2)).time())
    )
    total=0
    
    if temp_obj.exists():
        for temp in temp_obj:
            temp3=p_rides.objects.filter(ride_num=temp.pk,confirmed=False)
            total+=temp3.count()

    
    return render(request,'profile.html',{'number':total})

def reset(request):           #password reset by email verification
    if request.method == 'POST' :
        email=request.POST['email']
        try: 
            req=users.objects.get(email=email)
        except users.DoesNotExist:
            return JsonResponse({'status':0})

        if p_reset_limit.objects.filter(tid=req.pk).exists():
            obj=p_reset_limit.objects.filter(tid=req.pk)[0]
            now=datetime.now(timezone.utc)
            if (now-obj.time).total_seconds() < 3600:
                if obj.num<3:
                    send(req)
                    obj.num+=1
                    obj.save()
                    return JsonResponse({'status':1})
                else:
                    
                    return JsonResponse({'status':2})
            else:
                obj.time=now
                obj.num=1
                obj.save()
                send(req)
                return JsonResponse({'status':1})
            
        else:
            send(req)
            obj=p_reset_limit(num=1,tid=req.pk,time=datetime.now())
            obj.save()
            return JsonResponse({'status':1})

    else:
        return render(request,'reset.html') 

        

def pass_change(request,hash,uid): #if email verified or not
    uid=force_text(urlsafe_base64_decode(uid))
    user=users.objects.get(pk=uid)
    active_token=token()
    if active_token.check_token(user,hash):
        request.session['uid']=uid
        return render(request,'pass-change.html',{'status':1})
    else:
        return render(request,'pass-change.html',{'status':0})

@csrf_exempt 
def pass_change_final(request):   #password changing after email verified
    new_pass=request.POST['password']
    uid=request.session['uid']
    person=users.objects.get(pk=uid)
    person.password=make_password(new_pass)
    breakpoint()
    person.save()
    del request.session['uid']
    return render(request,'password-change-success.html')
    

def accept(request,id):
    if request.user.is_authenticated:
        obj=p_rides.objects.get(pk=id)
        if not obj.confirmed:
            obj.confirmed=True
            obj.save()
            time=datetime.now()
            message(text="Your ride from "+obj.source+" to "+obj.dest+" has been approved",msg_p=obj.ride_taker,time=time).save()
            message(text="You approved ride from "+obj.source+" to "+obj.dest+" for "+str(obj.cap),msg_p=request.user.pk,time=time).save()

            return redirect('/notfs.html/1')
        else:
            return redirect('/notfs.html/1')


    else:
        return redirect("/")


    
