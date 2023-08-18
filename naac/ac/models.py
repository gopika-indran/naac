from django.db import models

# Create your models here.
class Ac(models.Model):
    ac_id = models.AutoField(primary_key=True)
    name_of_add_on_crtificate_programs_offered = models.CharField(db_column='name_of_add_on/crtificate_programs_offered', max_length=100)  # Field renamed to remove unsuitable characters.
    course_code_if_any_field = models.CharField(db_column='course_code(if_any)', max_length=100)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    year_of_offering = models.CharField(max_length=11)
    duration_of_course = models.CharField(max_length=100)
    number_of_students_enrolled_in_the_year = models.CharField(max_length=11)
    number_of_students_completing_the_course_in_the_year = models.CharField(max_length=11)
    number_of_times_offered_during_the_year = models.CharField(max_length=11)

    class Meta:
        managed = False
        db_table = 'ac'
