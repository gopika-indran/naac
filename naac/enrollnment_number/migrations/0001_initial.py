# Generated by Django 3.2.16 on 2023-03-05 11:28

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='EnrollmentNumber',
            fields=[
                ('p_id', models.AutoField(primary_key=True, serialize=False)),
                ('program_name', models.CharField(db_column='program_Name', max_length=100)),
                ('program_code', models.IntegerField()),
                ('number_of_seat_sanction', models.IntegerField()),
                ('number_of_students_admited', models.IntegerField()),
            ],
            options={
                'db_table': 'enrollment_number',
                'managed': False,
            },
        ),
    ]
