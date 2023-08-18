from django.conf.urls import url
from seat_categories import views
urlpatterns=[
    url('pst/',views.post)
]