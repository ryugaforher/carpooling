from django.db import models

# Create your models here.
class offer_ride (models.Model):
    source=models.TextField()
    dest=models.TextField()
    cap=models.IntegerField()
    date=models.DateField()
    time=models.TimeField()
    slon=models.FloatField()
    slat=models.FloatField()
    dlon=models.FloatField()
    dlat=models.FloatField()
    offer_maker=models.IntegerField()