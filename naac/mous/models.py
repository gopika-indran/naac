from django.db import models

# Create your models here.
class Mous(models.Model):
    m_id = models.AutoField(primary_key=True)
    organisation_with_which_mou_is_signed = models.CharField(max_length=100)
    name_of_the_institution_industry_corporate_house = models.CharField(db_column='name_of_the_institution/industry/corporate_house', max_length=100)  # Field renamed to remove unsuitable characters.
    year_of_mou = models.IntegerField()
    duration = models.CharField(max_length=100)
    list_the_actual_activities_under_each_mou_year_wise = models.CharField(max_length=100)
    number_of_student_teachers_participated_under_mous = models.CharField(db_column='number_of_student/teachers_participated_under_mous', max_length=100)  # Field renamed to remove unsuitable characters.

    class Meta:
        managed = False
        db_table = 'mous'
