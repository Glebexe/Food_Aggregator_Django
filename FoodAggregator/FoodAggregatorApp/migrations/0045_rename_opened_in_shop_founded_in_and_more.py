# Generated by Django 4.2.5 on 2023-12-15 10:50

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('FoodAggregatorApp', '0044_alter_comment_user'),
    ]

    operations = [
        migrations.RenameField(
            model_name='shop',
            old_name='opened_in',
            new_name='founded_in',
        ),
        migrations.RenameField(
            model_name='shop',
            old_name='address',
            new_name='head_office_address',
        ),
        migrations.RemoveField(
            model_name='shop',
            name='city',
        ),
        migrations.DeleteModel(
            name='City',
        ),
    ]
