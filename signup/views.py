from django.shortcuts import render
from .models import users
from django.core.mail import send_mail
from django.contrib.auth.tokens import PasswordResetTokenGenerator
from django.utils import six
from django.utils.http import urlsafe_base64_encode, urlsafe_base64_decode
from django.utils.encoding import force_bytes,force_text
from django.contrib.auth.hashers import make_password

class token(PasswordResetTokenGenerator):
    def _make_hash_value(self,user,timestamp):
        return (
            six.text_type(user.pk)+six.text_type(timestamp)
        )
activation_token= token()

# Create your views here.
def registration(request,temp_text,uid):
    uid=force_text(urlsafe_base64_decode(uid))
    user=users.objects.get(pk=uid)
    try :
       if activation_token.check_token(user,temp_text):
        user.active_status=True
        user.save()
        return render(request,'success.html',{'success':1})
       else :
        email=user.email
        return render(request,'success.html',{'success':4,'email':email}) 
            
    
    except:
        return render(request,'success.html')

def register(request):
    email=request.POST['email']
    object=users.objects.filter(email=email)
    
    def sendmail(user):
        str=activation_token.make_token(user)
        send_mail(
            'confirmation email',
            'For activation of your email, visit this link http://localhost:8000/registration/'+str+'/'+urlsafe_base64_encode(force_bytes(user.pk)),
            'smtpservice4@gmail.com',
            [email,]

            )
        response=render(request,'success.html',{'success':2})
        
        return response
    if not(object.exists()):
        
        
        username=request.POST['Username']
        password=request.POST['password']
        new_user=users(username=username,email=email,password=make_password(password))
        
        new_user.save()
        return sendmail(new_user)
    
    elif not(object[0].active_status):
        return sendmail(list(object)[0])
        

    else :
        return render(request,'success.html',{'success':3})    


