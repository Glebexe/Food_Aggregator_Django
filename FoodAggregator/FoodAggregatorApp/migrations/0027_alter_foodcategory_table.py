# Generated by Django 4.2.5 on 2023-10-17 08:01

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('FoodAggregatorApp', '0026_foodcategory_remove_food_shop_alter_comment_comment_and_more'),
    ]

    operations = [
        migrations.AlterModelTable(
            name='foodcategory',
            table='food_category',
        ),
    ]
