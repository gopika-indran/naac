from django.db import models

# Create your models here.
class TeacherQuality1(models.Model):
    t_id = models.AutoField(primary_key=True)
    name_of_full_time_teacher = models.CharField(max_length=100)
    qualification = models.CharField(max_length=100)
    reasearch_guide = models.CharField(max_length=100)
    year = models.IntegerField()
    is_the_teacher_still_serving = models.CharField(max_length=100)
    name_of_the_scholar = models.CharField(max_length=100)
    year_of_registration_of_the_scholar = models.IntegerField()
    title = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'teacher_quality1'
