from django.shortcuts import render
from academic_flexibility.models import AcademicFlexibiity
from naac import settings
import openpyxl
# Create your views here.
def post(request):
    if request.method=="POST":
        obj=AcademicFlexibiity()
        obj.program_name=request.POST.get('pn')
        obj.program_code=request.POST.get('pc')
        obj.status_of_implementation_of_cbcss_elective_course_system=request.POST.get('yn')
        obj.year_of_indroduction=request.POST.get('yi')
        obj.link_of_the_relevent_document=request.POST.get('doc')
        obj.save()
        obb = AcademicFlexibiity.objects.all()
        toex = []
        for i in obb:
            rc = []
            rc.append(i.program_name)
            rc.append(i.program_code)
            rc.append(i.status_of_implementation_of_cbcss_elective_course_system)
            rc.append(i.year_of_indroduction)
            rc.append(i.link_of_the_relevent_document)

            toex.append(rc)
        outfile = str(settings.BASE_DIR) + str(settings.STATIC_URL) + "academic_flexibility.xlsx"
        book = openpyxl.load_workbook(outfile)
        sheet = book.active
        for row in toex:
            sheet.append(row)
        book.save(outfile)
        return render(request, 'academic_flexibility/success.html')
    return render(request,'academic_flexibility/academic flexibility.html')