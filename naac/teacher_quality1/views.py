from django.shortcuts import render
from teacher_quality1.models import TeacherQuality1
from naac import settings
import openpyxl
# Create your views here.
def post(request):
    if request.method=="POST":
        obj=TeacherQuality1()
        obj.year=request.POST.get('yr')
        obj.name_of_full_time_teacher=request.POST.get('nt')
        obj.qualification=request.POST.get('yo')
        obj.reasearch_guide=request.POST.get('rg')
        obj.is_the_teacher_still_serving=request.POST.get('si')
        obj.name_of_the_scholar=request.POST.get('ns')
        obj.year_of_registration_of_the_scholar=request.POST.get('ys')
        obj.title=request.POST.get('tt')
        obj.save()
        obb = TeacherQuality1.objects.all()
        toex = []
        for i in obb:
            rc = []
            rc.append(i.year)
            rc.append(i.name_of_full_time_teacher)
            rc.append(i.qualification)
            rc.append(i.reasearch_guide)
            rc.append(i.is_the_teacher_still_serving)
            rc.append(i.name_of_the_scholar)
            rc.append(i.year_of_registration_of_the_scholar)
            rc.append(i.title)

            toex.append(rc)
        outfile = str(settings.BASE_DIR) + str(settings.STATIC_URL) + "teacher_quality1.xlsx"
        book = openpyxl.load_workbook(outfile)
        sheet = book.active
        for row in toex:
            sheet.append(row)
        book.save(outfile)
        return render(request, 'teacher_quality1/success.html')
    return render(request,'teacher_quality1/teacher_quality1.html')