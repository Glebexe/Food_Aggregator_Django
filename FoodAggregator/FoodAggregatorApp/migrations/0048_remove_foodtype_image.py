# Generated by Django 4.2.5 on 2023-12-15 15:49

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('FoodAggregatorApp', '0047_foodtype_image'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='foodtype',
            name='image',
        ),
    ]
