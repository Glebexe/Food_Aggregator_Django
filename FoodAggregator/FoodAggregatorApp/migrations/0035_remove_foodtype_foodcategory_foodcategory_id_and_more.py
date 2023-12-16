# Generated by Django 4.2.5 on 2023-10-18 07:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('FoodAggregatorApp', '0034_remove_foodcategory_id_alter_foodcategory_name'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='foodtype',
            name='foodCategory',
        ),
        migrations.AddField(
            model_name='foodcategory',
            name='id',
            field=models.BigAutoField(auto_created=True, default=0, primary_key=True, serialize=False, verbose_name='ID'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='foodcategory',
            name='name',
            field=models.CharField(max_length=50, verbose_name='Название категории продукта'),
        ),
    ]
