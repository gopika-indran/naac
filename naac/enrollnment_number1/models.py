from django.db import models

# Create your models here.
class EnrollmentNumber1(models.Model):
    p_name = models.IntegerField(primary_key=True)
    programme_name = models.CharField(max_length=100)
    programme_code = models.IntegerField()
    number_of_seats_sanctioned = models.IntegerField()
    number_of_students_admitted = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'enrollment_number1'
