from django.db import models

# Create your models here.
class EnrollmentNumber(models.Model):
    p_id = models.AutoField(primary_key=True)
    program_name = models.CharField(db_column='program_Name', max_length=100)  # Field name made lowercase.
    program_code = models.IntegerField()
    number_of_seat_sanction = models.IntegerField()
    number_of_students_admited = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'enrollment_number'
