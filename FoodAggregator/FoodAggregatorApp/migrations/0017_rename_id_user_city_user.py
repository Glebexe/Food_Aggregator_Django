# Generated by Django 4.2.5 on 2023-10-08 10:51

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('FoodAggregatorApp', '0016_city_id_user'),
    ]

    operations = [
        migrations.RenameField(
            model_name='city',
            old_name='id_user',
            new_name='user',
        ),
    ]
