# Generated by Django 3.1.7 on 2021-06-09 09:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('offer', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='offer_ride',
            name='lat',
            field=models.FloatField(default=0),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='offer_ride',
            name='lon',
            field=models.FloatField(default=0),
            preserve_default=False,
        ),
    ]
