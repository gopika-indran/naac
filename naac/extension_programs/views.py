from django.shortcuts import render
from extension_programs.models import ExtensionPrograms
from naac import settings
import openpyxl
# Create your views here.
def post(request):
    if request.method=="POST":
        obj=ExtensionPrograms()
        obj.name_of_activity=request.POST.get('of')
        obj.name_of_the_schema=request.POST.get('ns')
        obj.number_of_students_participated_in_such_activities=request.POST.get('sp')
        obj.organisation_unit=request.POST.get('ca')
        obj.save()
        obb = ExtensionPrograms.objects.all()
        toex = []
        for i in obb:
            rc = []
            rc.append(i.name_of_activity)
            rc.append(i.name_of_the_schema)
            rc.append(i.number_of_students_participated_in_such_activities)
            rc.append(i.organisation_unit)

            toex.append(rc)
        outfile = str(settings.BASE_DIR) + str(settings.STATIC_URL) + "extension_programs.xlsx"
        book = openpyxl.load_workbook(outfile)
        sheet = book.active
        for row in toex:
            sheet.append(row)
        book.save(outfile)
        return render(request, 'extension_programs/success.html')
    return render(request,'extension_programs/extension programs.html')