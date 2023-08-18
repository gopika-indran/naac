from django.conf.urls import url
from teaching_quality import views
urlpatterns=[
    url('pst/',views.post)
]