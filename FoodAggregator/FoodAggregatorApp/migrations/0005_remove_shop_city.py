# Generated by Django 4.2.5 on 2023-10-08 09:19

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('FoodAggregatorApp', '0004_remove_city_shop_remove_shop_food_food_shop_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='shop',
            name='city',
        ),
    ]