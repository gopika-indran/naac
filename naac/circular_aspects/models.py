from django.db import models

# Create your models here.
class CircularAspects(models.Model):
    c_id = models.AutoField(primary_key=True)
    year = models.IntegerField()
    name_of_the_teacher_participated = models.CharField(max_length=100)
    name_of_the_body_in_which_full_time_teacher_participated = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'circular_aspects'
