from django.db import models

# Create your models here.
class Activity(models.Model):
    a_id = models.AutoField(primary_key=True)
    si_no = models.CharField(max_length=100)
    title_of_the_collaborative_activity = models.CharField(max_length=100)
    name_of_the_collabrating_agency_with_contact_details = models.CharField(max_length=100)
    name_of_the_participant = models.CharField(max_length=100)
    year_of_collaboration = models.IntegerField()
    duration = models.CharField(max_length=100)
    nature_of_the_activity = models.CharField(max_length=100)
    description = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'activity'
