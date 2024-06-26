# Generated by Django 3.2.16 on 2023-03-05 11:28

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='CuriculamDetails2',
            fields=[
                ('number', models.AutoField(primary_key=True, serialize=False)),
                ('programe_name', models.CharField(max_length=100)),
                ('programe_code', models.IntegerField()),
                ('list', models.CharField(max_length=100)),
                ('description', models.CharField(max_length=100)),
                ('link_to_the_relevent_document', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'curiculam_details2',
                'managed': False,
            },
        ),
    ]
