from django.shortcuts import render
from ac.models import Ac
from naac import settings
import openpyxl
# Create your views here.

def post(request):
    if request.method=="POST":
        obj=Ac()
        obj.name_of_add_on_crtificate_programs_offered=request.POST.get('cp')
        obj.course_code_if_any_field=request.POST.get('cc')
        obj.year_of_offering=request.POST.get('yo')
        obj.duration_of_course=request.POST.get('do')
        obj.number_of_students_enrolled_in_the_year=request.POST.get('ns')
        obj.number_of_students_completing_the_course_in_the_year=request.POST.get('sc')
        obj.number_of_times_offered_during_the_year=request.POST.get('dy')
        obj.save()
        obb = Ac.objects.all()
        toex = []
        for i in obb:
            rc = []
            rc.append(i.name_of_add_on_crtificate_programs_offered)
            rc.append(i.course_code_if_any_field)
            rc.append(i.year_of_offering)
            rc.append(i.duration_of_course)
            rc.append(i.number_of_students_enrolled_in_the_year)
            rc.append(i.number_of_students_completing_the_course_in_the_year)
            rc.append(i.number_of_times_offered_during_the_year)
            toex.append(rc)
        outfile = str(settings.BASE_DIR) + str(settings.STATIC_URL) + "ac.xlsx"
        book = openpyxl.load_workbook(outfile)
        sheet = book.active
        for row in toex:
            sheet.append(row)
        book.save(outfile)
        return render(request,'ac/success.html')

    return render(request,'ac/1.2.3.html')







