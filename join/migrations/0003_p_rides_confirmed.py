# Generated by Django 3.1.7 on 2021-07-26 14:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('join', '0002_p_rides_ride_taker'),
    ]

    operations = [
        migrations.AddField(
            model_name='p_rides',
            name='confirmed',
            field=models.BooleanField(default=False),
            preserve_default=False,
        ),
    ]