# Generated by Django 4.2.5 on 2023-10-15 15:09

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('FoodAggregatorApp', '0021_alter_comments_table'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='Comments',
            new_name='Comment',
        ),
    ]