from django.db import models

# Create your models here.
class Workshop(models.Model):
    workshop_id = models.AutoField(primary_key=True)
    name_of_the_workshop_seminar = models.CharField(db_column='name_of_the_workshop/seminar', max_length=100)  # Field renamed to remove unsuitable characters.
    number_of_participants = models.IntegerField()
    date_from_to = models.DateTimeField()
    description = models.CharField(max_length=100)
    link_to_the_activity_report_on_the_website = models.CharField(max_length=100)
    year = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'workshop'
