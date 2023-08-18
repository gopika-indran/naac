from django.db import models

# Create your models here.
class Research(models.Model):
    research_id = models.AutoField(primary_key=True)
    name_of_the_project_endownments_chairs = models.CharField(db_column='name_of_the_project/endownments,chairs', max_length=100)  # Field renamed to remove unsuitable characters.
    name_of_the_principle_investigator_coinvestigator = models.CharField(db_column='name_of_the_principle_investigator/coinvestigator', max_length=100)  # Field renamed to remove unsuitable characters.
    department_of_principle_investigator = models.CharField(max_length=100)
    amount_sanctioned = models.IntegerField()
    name_of_the_funding_agency = models.CharField(max_length=100)
    type_government_nongovernment_field = models.CharField(db_column='type(government/nongovernment)', max_length=100)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '
    year_of_award = models.CharField(max_length=100)
    duration_of_project = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'research'

