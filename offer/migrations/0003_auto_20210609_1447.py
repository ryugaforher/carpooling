# Generated by Django 3.1.7 on 2021-06-09 09:17

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('offer', '0002_auto_20210609_1440'),
    ]

    operations = [
        migrations.RenameField(
            model_name='offer_ride',
            old_name='lat',
            new_name='dcod',
        ),
        migrations.RenameField(
            model_name='offer_ride',
            old_name='lon',
            new_name='scod',
        ),
    ]
