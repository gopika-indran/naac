from django.shortcuts import render
from CBCSS.models import Cbcss
from naac import settings
import openpyxl
# Create your views here.
def post(request):
    if request.method=="POST":
        obj=Cbcss()
        obj.program_code=request.POST.get('pc')
        obj.program_name=request.POST.get('pn')
        obj.year_of_introduction=request.POST.get('yn')
        obj.status_of_implementation_of_cbcs_effective=request.POST.get('ec')
        obj.year_of_implementation_of_cbcs_elective_course_system=request.POST.get('yi')
        obj.save()
        obb = Cbcss.objects.all()
        toex = []
        for i in obb:
            rc = []
            rc.append(i.program_code)
            rc.append(i.program_name)
            rc.append(i.year_of_introduction)
            rc.append(i.status_of_implementation_of_cbcs_effective)
            rc.append(i.year_of_implementation_of_cbcs_elective_course_system)

            toex.append(rc)
        outfile = str(settings.BASE_DIR) + str(settings.STATIC_URL) + "cbcss.xlsx"
        book = openpyxl.load_workbook(outfile)
        sheet = book.active
        for row in toex:
            sheet.append(row)
        book.save(outfile)
        return render(request, 'cbcss/success.html')
    return render(request,'CBCSS/cbcss.html')