from django.conf.urls import url
from number_of_teachers import views
urlpatterns=[
    url('pst/',views.post)
]