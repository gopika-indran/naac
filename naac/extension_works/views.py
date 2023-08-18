from django.shortcuts import render
from extension_works.models import ExtensionWorks
from naac import settings
import openpyxl
# Create your views here.
def post(request):
    if request.method=="POST":
        obj=ExtensionWorks()
        obj.name_of_the_activity=request.POST.get('na')
        obj.name_of_the_award_recognition=request.POST.get('wr')
        obj.name_of_the_awarding_government_government_recognised_bodies=request.POST.get('gr')
        obj.year_of_award=request.POST.get('oa')
        obj.save()
        obb = ExtensionWorks.objects.all()
        toex = []
        for i in obb:
            rc = []
            rc.append(i.name_of_the_activity)
            rc.append(i.name_of_the_award_recognition)
            rc.append(i.name_of_the_awarding_government_government_recognised_bodies)
            rc.append(i.year_of_award)

            toex.append(rc)
        outfile = str(settings.BASE_DIR) + str(settings.STATIC_URL) + "extension_works.xlsx"
        book = openpyxl.load_workbook(outfile)
        sheet = book.active
        for row in toex:
            sheet.append(row)
        book.save(outfile)
        return render(request, 'extension_works/success.html')
    return render(request,'extension_works/extension works.html')