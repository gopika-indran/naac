from django.db import models

# Create your models here.
class ExtensionPrograms(models.Model):
    program_id = models.AutoField(primary_key=True)
    name_of_activity = models.CharField(max_length=100)
    organisation_unit = models.CharField(max_length=100)
    name_of_the_schema = models.CharField(max_length=100)
    year_of_the_activity = models.CharField(max_length=100)
    number_of_students_participated_in_such_activities = models.CharField(max_length=100)
    description = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'extension_programs'
