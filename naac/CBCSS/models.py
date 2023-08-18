from django.db import models

# Create your models here.
class Cbcss(models.Model):
    credit_id = models.AutoField(primary_key=True)
    program_code = models.CharField(max_length=100)
    program_name = models.CharField(max_length=100)
    year_of_introduction = models.CharField(max_length=100)
    status_of_implementation_of_cbcs_effective = models.CharField(db_column='status_of_implementation_of_cbcs/effective', max_length=100)  # Field renamed to remove unsuitable characters.
    # description = models.CharField(max_length=100)
    year_of_implementation_of_cbcs_elective_course_system = models.CharField(db_column='year_of_implementation_of_cbcs/elective_course_system', max_length=100)  # Field renamed to remove unsuitable characters.

    class Meta:
        managed = False
        db_table = 'cbcss'
