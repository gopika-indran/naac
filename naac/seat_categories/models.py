from django.db import models

# Create your models here.
class SeatCategories(models.Model):
    seats_no = models.AutoField(primary_key=True)
    year = models.CharField(max_length=100)
    sc = models.CharField(max_length=100)
    st = models.CharField(max_length=100)
    obc = models.CharField(max_length=100)
    other = models.CharField(max_length=100)
    gen = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'seat_categories'
