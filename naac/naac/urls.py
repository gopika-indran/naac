"""naac URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.conf.urls import url,include
from login import views

urlpatterns = [
    path('admin/', admin.site.urls),
    url('ac/',include('ac.url')),
    url('academic_flexibility/',include('academic_flexibility.url')),
    url('activity/',include('activity.url')),
    url('awards/',include('awards.url')),
    url('CBCSS/',include('CBCSS.url')),
    url('circular_aspects/',include('circular_aspects.url')),
    url('curiculam_details/',include('curiculam_details.url')),
    url('curiculam_details2/',include('curiculam_details2.url')),
    url('enrollnment_number/',include('enrollnment_number.url')),
    url('enrollnment_number1/',include('enrollnment_number1.url')),
    url('extension_programs/',include('extension_programs.url')),
    url('extension_works/',include('extension_works.url')),
    url('login/',include('login.url')),
    url('mous/',include('mous.url')),
    url('number_of_teachers/',include('number_of_teachers.url')),
    url('research/',include('research.url')),
    url('seat_categories/',include('seat_categories.url')),
    url('student_learning/',include('student_learning.url')),
    url('teacher_quality1/',include('teacher_quality1.url')),
    url('teaching_quality/',include('teaching_quality.url')),
    url('workshop/',include('workshop.url')),
    url('academic_flexibility_2/',include('academic_flexibility_2.url')),
    url('temp/',include('temp.url')),
    url('$',views.post_log)

]