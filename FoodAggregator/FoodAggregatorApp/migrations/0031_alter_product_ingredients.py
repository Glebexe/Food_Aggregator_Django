# Generated by Django 4.2.5 on 2023-10-18 07:00

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('FoodAggregatorApp', '0030_product_ingredients'),
    ]

    operations = [
        migrations.AlterField(
            model_name='product',
            name='ingredients',
            field=models.TextField(blank=True, max_length=500, null=True, verbose_name='Состав'),
        ),
    ]
