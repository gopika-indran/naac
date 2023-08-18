from django.shortcuts import render
from student_learning.models import StudentLearning
from naac import settings
import openpyxl
# Create your views here.
def post(request):
    if request.method=="POST":
        obj=StudentLearning()
        obj.year=request.POST.get('yr')
        obj.program_code=request.POST.get('pc')
        obj.program_name=request.POST.get('pn')
        obj.number_of_students_appeared_in_the_final_year_examination=request.POST.get('fy')
        obj.number_of_students_passed_in_final_year_examination=request.POST.get('sp')
        obj.save()
        obb =StudentLearning.objects.all()
        toex = []
        for i in obb:
            rc = []
            rc.append(i.year)
            rc.append(i.program_code)
            rc.append(i.program_name)
            rc.append(i.number_of_students_appeared_in_the_final_year_examination)
            rc.append(i.number_of_students_passed_in_final_year_examination)

            toex.append(rc)
        outfile = str(settings.BASE_DIR) + str(settings.STATIC_URL) + "student_learning.xlsx"
        book = openpyxl.load_workbook(outfile)
        sheet = book.active
        for row in toex:
            sheet.append(row)
        book.save(outfile)
        return render(request, 'student_learning/success.html')
    return render(request,'student_learning/students learning.html')