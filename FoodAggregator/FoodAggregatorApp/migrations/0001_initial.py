# Generated by Django 4.2.5 on 2023-09-23 08:10

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Food',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(help_text='Введите название продукта', max_length=50)),
                ('price', models.DecimalField(decimal_places=2, max_digits=8, verbose_name='Цена')),
                ('weight', models.DecimalField(decimal_places=3, max_digits=9, verbose_name='Вес в килограммах')),
            ],
        ),
        migrations.CreateModel(
            name='Shop',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50, verbose_name='Магазин')),
                ('address', models.CharField(max_length=100, verbose_name='Адрес')),
                ('opened_in', models.DateField(verbose_name='Когда был открыт')),
                ('city_name', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='FoodAggregatorApp.food')),
            ],
        ),
        migrations.CreateModel(
            name='City',
            fields=[
                ('name', models.CharField(max_length=50, primary_key=True, serialize=False, verbose_name='Города')),
                ('country', models.CharField(max_length=50, verbose_name='Страна')),
                ('shop', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='FoodAggregatorApp.shop')),
            ],
        ),
    ]