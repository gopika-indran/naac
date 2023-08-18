from django.shortcuts import render
from curiculam_details.models import CuriculamDetails
from naac import settings
import openpyxl
# Create your views here.
def post(request):
    if request.method=="POST":
        obj=CuriculamDetails()
        obj.program_code=request.POST.get('pc')
        obj.program_name=request.POST.get('pn')
        obj.year_of_offering=request.POST.get('yo')
        obj.course_details=request.POST.get('cc')
        obj.student_details=request.POST.get('ns')
        obj.name_of_cource=request.POST.get('nc')
        obj.save()
        obb =CuriculamDetails.objects.all()
        toex = []
        for i in obb:
            rc = []
            rc.append(i.program_code)
            rc.append(i.program_name)
            rc.append(i.year_of_offering)
            rc.append(i.course_details)
            rc.append(i.student_details)
            rc.append(i.name_of_cource)
            toex.append(rc)
        outfile = str(settings.BASE_DIR) + str(settings.STATIC_URL) + "curiculam_details.xlsx"
        book = openpyxl.load_workbook(outfile)
        sheet = book.active
        for row in toex:
            sheet.append(row)
        book.save(outfile)
        return render(request, 'curiculam_details/success.html')
    return render(request,'curiculam_details/curriculum1.html')