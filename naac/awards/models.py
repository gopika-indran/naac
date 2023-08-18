from django.db import models

# Create your models here.
class Awards(models.Model):
    award_id = models.AutoField(primary_key=True)
    si_no = models.IntegerField()
    name_of_the_teacher = models.CharField(max_length=100)
    title_of_the_book_chapters_published = models.CharField(db_column='title_of_the_book/chapters_published', max_length=100)  # Field renamed to remove unsuitable characters.
    title_of_the_paper = models.CharField(max_length=100)
    title_of_the_proceeding_of_the_conference = models.CharField(max_length=100)
    name_of_the_unference = models.CharField(max_length=100)
    national_internationalyear_of_publication = models.CharField(db_column='national/internationalyear_of_publication', max_length=100)  # Field renamed to remove unsuitable characters

    isbm_issn_number_of_proceedng = models.CharField(db_column='ISBM/ISSN_number_of_proceedng', max_length=100)
    affiliating_institudes_at_the_time_of_publication = models.CharField(max_length=100)
    name_of_the_published = models.CharField(max_length=100)
    year_of_publication = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'awards'
