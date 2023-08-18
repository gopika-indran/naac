from django.db import models

# Create your models here.
class NumberOfTeachers(models.Model):
    n_id = models.AutoField(primary_key=True)
    name_of_full_time_teachers = models.CharField(max_length=100)
    pan = models.CharField(db_column='PAN', max_length=100)  # Field name made lowercase.
    description = models.CharField(max_length=100)
    year_of_appoiment = models.IntegerField()
    number_of_department = models.CharField(max_length=100)
    total_year_of_experience_in_the_same_instituation = models.CharField(max_length=100)
    number_of_appoiment = models.CharField(max_length=100)
    is_the_teacher_still_serving_the_institution = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'number_of_teachers'

