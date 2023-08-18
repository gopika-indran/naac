from django.shortcuts import render
from academic_flexibility_2.models import AcademicFlexibility2
from naac import settings
import openpyxl

# Create your views here.
def post(request):
    if request.method=="POST":
        obj=AcademicFlexibility2()
        obj.year=request.POST.get('year')
        obj.name_of_teachers_participated=request.POST.get('tch')
        obj.name_of_the_body_in_which_full_time_teacher_participated=request.POST.get('tech')
        obj.save()
        obb =AcademicFlexibility2.objects.all()
        toex = []
        for i in obb:
            rc = []
            rc.append(i.year)
            rc.append(i.name_of_teachers_participated)
            rc.append(i.name_of_the_body_in_which_full_time_teacher_participated)

            toex.append(rc)
        outfile = str(settings.BASE_DIR) + str(settings.STATIC_URL) + "academic_flexibility_2.xlsx"
        book = openpyxl.load_workbook(outfile)
        sheet = book.active
        for row in toex:
            sheet.append(row)
        book.save(outfile)
        return render(request, 'academic_flexibility_2/success.html')
    return render(request,'academic_flexibility_2/academic_flexibility2.html')

