# Generated by Django 3.1.7 on 2021-06-24 12:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('signup', '0004_auto_20210520_2345'),
    ]

    operations = [
        migrations.AddField(
            model_name='users',
            name='address',
            field=models.TextField(default='as colony,dausa,India,303303'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='users',
            name='phone',
            field=models.CharField(default='+917239810619', max_length=15),
            preserve_default=False,
        ),
    ]
