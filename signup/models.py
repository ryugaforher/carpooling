

# Create your models here.
from django.db import models
from django.contrib.auth.models import AbstractUser

class users(AbstractUser):
    active_status=models.BooleanField(default=False)
    phone=models.CharField(max_length=15)
    address=models.TextField()
    p_pic=models.ImageField(upload_to='profilepics/',default="profile-pics/avatar-15.png")
    


