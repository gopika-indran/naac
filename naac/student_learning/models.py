from django.db import models

# Create your models here.
class StudentLearning(models.Model):
    sl_id = models.AutoField(primary_key=True)
    description = models.CharField(max_length=100)
    year = models.IntegerField()
    program_code = models.CharField(max_length=100)
    program_name = models.CharField(max_length=100)
    number_of_students_appeared_in_the_final_year_examination = models.IntegerField()
    number_of_students_passed_in_final_year_examination = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'student_learning'
