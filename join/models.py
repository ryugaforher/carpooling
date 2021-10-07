from django.db import models

# Create your models here.
class p_rides(models.Model):
    source=models.TextField()
    dest=models.TextField()
    cap=models.IntegerField()
    slon=models.FloatField()
    slat=models.FloatField()
    dlon=models.FloatField()
    dlat=models.FloatField()
    ride_num=models.IntegerField() #primary key of ride from offer_ride model
    ride_taker=models.IntegerField()
    confirmed=models.BooleanField(default=False)