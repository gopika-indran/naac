from django.db import models

# Create your models here.
class CuriculamDetails2(models.Model):
    number = models.AutoField(primary_key=True)
    programe_name = models.CharField(max_length=100)
    programe_code = models.IntegerField()
    list = models.CharField(max_length=100)
    description = models.CharField(max_length=100)
    link_to_the_relevent_document = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'curiculam_details2'

