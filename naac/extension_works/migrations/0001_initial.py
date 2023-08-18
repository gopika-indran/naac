# Generated by Django 3.2.16 on 2023-03-05 11:28

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='ExtensionWorks',
            fields=[
                ('e_id', models.AutoField(primary_key=True, serialize=False)),
                ('name_of_the_activity', models.CharField(max_length=100)),
                ('name_of_the_award_recognition', models.CharField(db_column='name_of_the_award/recognition', max_length=100)),
                ('name_of_the_awarding_government_government_recognised_bodies', models.CharField(db_column='name_of_the_awarding_government/government_recognised_bodies', max_length=100)),
                ('year_of_award', models.IntegerField()),
            ],
            options={
                'db_table': 'extension_works',
                'managed': False,
            },
        ),
    ]
