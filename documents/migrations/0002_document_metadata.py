# Generated by Django 5.1.3 on 2024-11-22 14:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('documents', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='document',
            name='metadata',
            field=models.JSONField(blank=True, null=True),
        ),
    ]
