from django.shortcuts import render
from number_of_teachers.models import NumberOfTeachers
from naac import settings
import openpyxl
# Create your views here.
def post(request):
    if request.method=="POST":
        obj=NumberOfTeachers()
        obj.is_the_teacher_still_serving_the_institution=request.POST.get('si')
        obj.total_year_of_experience_in_the_same_instituation=request.POST.get('yn')
        obj.name_of_full_time_teachers=request.POST.get('nt')
        obj.pan=request.POST.get('pn')
        obj.year_of_appoiment=request.POST.get('ya')
        obj.number_of_department=request.POST.get('nd')
        obj.number_of_appoiment=request.POST.get('na')
        obj.save()
        obb = NumberOfTeachers.objects.all()
        toex = []
        for i in obb:
            rc = []
            rc.append(i.is_the_teacher_still_serving_the_institution)
            rc.append(i.total_year_of_experience_in_the_same_instituation)
            rc.append(i.name_of_full_time_teachers)
            rc.append(i.pan)
            rc.append(i.year_of_appoiment)
            rc.append(i.number_of_department)
            rc.append(i.number_of_appoiment)

            toex.append(rc)
        outfile = str(settings.BASE_DIR) + str(settings.STATIC_URL) + "number_of_teachers.xlsx"
        book = openpyxl.load_workbook(outfile)
        sheet = book.active
        for row in toex:
            sheet.append(row)
        book.save(outfile)
        return render(request, 'number_of_teachers/success.html')
    return render(request,'number_of_teachers/number of teaches.html')