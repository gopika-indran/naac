# Generated by Django 3.2.16 on 2023-03-05 11:28

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='StudentLearning',
            fields=[
                ('sl_id', models.AutoField(primary_key=True, serialize=False)),
                ('description', models.CharField(max_length=100)),
                ('year', models.IntegerField()),
                ('program_code', models.CharField(max_length=100)),
                ('program_name', models.CharField(max_length=100)),
                ('number_of_students_appeared_in_the_final_year_examination', models.IntegerField()),
                ('number_of_students_passed_in_final_year_examination', models.IntegerField()),
            ],
            options={
                'db_table': 'student_learning',
                'managed': False,
            },
        ),
    ]