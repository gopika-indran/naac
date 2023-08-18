from django.conf.urls import url

from temp import views

urlpatterns=[
    url('department/',views.department),
    url('iqac/',views.iqac),
    url('office/',views.office),
    url('principle/',views.principle),
    url('student_related/',views.student_related),
    url('teacher/',views.teacher),
    url('home/',views.home)
]