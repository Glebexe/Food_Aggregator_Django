# Generated by Django 4.2.5 on 2023-10-15 08:17

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('FoodAggregatorApp', '0017_rename_id_user_city_user'),
    ]

    operations = [
        migrations.AddField(
            model_name='food',
            name='image',
            field=models.ImageField(blank=True, null=True, upload_to='', verbose_name='Картинка'),
        ),
    ]
