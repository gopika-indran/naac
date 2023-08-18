from django.db import models

# Create your models here.
class AcademicFlexibility2(models.Model):
    acadefx2_id = models.AutoField(primary_key=True)
    year = models.CharField(max_length=100)
    name_of_teachers_participated = models.CharField(max_length=100)
    name_of_the_body_in_which_full_time_teacher_participated = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'academic_flexibility2'

