# Generated by Django 4.2.5 on 2023-10-08 09:45

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('FoodAggregatorApp', '0011_shop_city'),
    ]

    operations = [
        migrations.AlterField(
            model_name='food',
            name='shop',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='FoodAggregatorApp.shop', verbose_name='Название продукта'),
        ),
        migrations.AlterField(
            model_name='shop',
            name='city',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='FoodAggregatorApp.city', verbose_name='Название продукта'),
        ),
    ]
