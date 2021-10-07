from django.db import models
from django.db.models.base import Model

# Create your models here.
class message(models.Model):
    text=models.TextField()
    msg_p=models.IntegerField()
    time=models.DateTimeField()

class p_reset_limit(models.Model): #database for password reset limit
    tid=models.IntegerField()
    time=models.DateTimeField()
    num=models.IntegerField()