# Generated by Django 4.2.5 on 2023-12-15 15:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('FoodAggregatorApp', '0046_remove_foodtype_image'),
    ]

    operations = [
        migrations.AddField(
            model_name='foodtype',
            name='image',
            field=models.ImageField(blank=True, null=True, upload_to='images/foodCategories', verbose_name='Картинка'),
        ),
    ]