from django.shortcuts import render

# Create your views here.
def department(request):
    return render(request,'temp/department.html')

def iqac(request):
    return render(request,'temp/iqac.html')

def office(request):
    return render(request,'temp/office.html')

def principle(request):
    return render(request,'temp/principle.html')

def student_related(request):
    return render(request,'temp/student_related.html')

def teacher(request):
    return render(request,'temp/teacher.html')

def home(request):
    return render(request,'temp/home.html')
