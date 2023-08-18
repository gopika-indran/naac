from django.conf.urls import url
from login import views
urlpatterns=[
    url('log/',views.post_log),
    url('pro/',views.pdf),
    url('doen/',views.down)
]