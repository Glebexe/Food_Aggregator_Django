# Generated by Django 4.2.5 on 2023-10-18 07:18

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('FoodAggregatorApp', '0032_alter_product_name'),
    ]

    operations = [
        migrations.CreateModel(
            name='ProductDescription',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(help_text='Введите название продукта', max_length=100, verbose_name='Продукт')),
                ('weight', models.DecimalField(decimal_places=3, max_digits=9, verbose_name='Вес в килограммах')),
                ('description', models.TextField(blank=True, max_length=500, null=True, verbose_name='Описание')),
                ('ingredients', models.TextField(blank=True, max_length=500, null=True, verbose_name='Состав')),
                ('image', models.ImageField(blank=True, null=True, upload_to='images/products', verbose_name='Картинка')),
                ('foodType', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='FoodAggregatorApp.foodtype', verbose_name='Тип продукта')),
            ],
            options={
                'db_table': 'product_description',
            },
        ),
        migrations.CreateModel(
            name='InstanceOfProduct',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('price', models.DecimalField(decimal_places=2, max_digits=8, verbose_name='Цена')),
                ('productDescription', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='FoodAggregatorApp.productdescription', verbose_name='Товар')),
                ('shop', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='FoodAggregatorApp.shop', verbose_name='Магазин')),
            ],
            options={
                'db_table': 'instance_of_product',
            },
        ),
        migrations.AlterField(
            model_name='comment',
            name='product',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='FoodAggregatorApp.productdescription', verbose_name='Продукт'),
        ),
        migrations.DeleteModel(
            name='Product',
        ),
    ]
