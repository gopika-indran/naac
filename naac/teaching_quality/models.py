from django.db import models

# Create your models here.
class TeachingQuality(models.Model):
    tq_id = models.AutoField(primary_key=True)
    name_of_full_time_teachers = models.CharField(max_length=100)
    qualification = models.CharField(max_length=100)
    reserch_guides = models.CharField(max_length=100)
    year_of_reserch_guides = models.CharField(max_length=100)
    is_the_teacher_still_serving_the_institution = models.CharField(max_length=100)
    name_of_the_scholor = models.CharField(max_length=100)
    year_of_registeration_of_the_scholor = models.CharField(max_length=100)
    title_of_the_thesis_for_scholar = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'teaching_quality'
