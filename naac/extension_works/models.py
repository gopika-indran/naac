from django.db import models

# Create your models here.
class ExtensionWorks(models.Model):
    e_id = models.AutoField(primary_key=True)
    name_of_the_activity = models.CharField(max_length=100)
    name_of_the_award_recognition = models.CharField(db_column='name_of_the_award/recognition', max_length=100)  # Field renamed to remove unsuitable characters.
    name_of_the_awarding_government_government_recognised_bodies = models.CharField(db_column='name_of_the_awarding_government/government_recognised_bodies', max_length=100)  # Field r
    year_of_award = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'extension_works'
