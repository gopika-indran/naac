from django.db import models

# Create your models here.
class CuriculamDetails(models.Model):
    p_id = models.AutoField(primary_key=True)
    program_name = models.CharField(db_column='program_Name', max_length=100)  # Field name made lowercase.
    program_code = models.IntegerField()
    course_details = models.CharField(max_length=100)
    year_of_offering = models.IntegerField()
    student_details = models.CharField(max_length=100)
    name_of_cource = models.CharField(max_length=10)

    class Meta:
        managed = False
        db_table = 'curiculam_details'
