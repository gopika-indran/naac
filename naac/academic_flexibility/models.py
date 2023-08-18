from django.db import models

# Create your models here.
class AcademicFlexibiity(models.Model):
    acadefx_id = models.AutoField(primary_key=True)
    program_code = models.CharField(max_length=10)
    program_name = models.CharField(max_length=100)
    status_of_implementation_of_cbcss_elective_course_system = models.CharField(db_column='status_of_implementation_of_cbcss/elective_course_system', max_length=100)  # Field renamed to remove unsuitable ch
    year_of_indroduction = models.CharField(max_length=10)
    link_of_the_relevent_document = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'academic_flexibiity'


