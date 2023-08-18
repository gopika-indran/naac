from django.shortcuts import render
from curiculam_details2.models import CuriculamDetails2
from naac import settings
import openpyxl
# Create your views here.
def post(request):
    if request.method=="POST":
        obj=CuriculamDetails2()
        obj.programe_code=request.POST.get('programme code')
        obj.programe_name=request.POST.get('programme name')
        obj.list=request.POST.get('lsu')
        obj.link_to_the_relevent_document=request.POST.get('rd')
        obj.save()
        obb =CuriculamDetails2.objects.all()
        toex = []
        for i in obb:
            rc = []
            rc.append(i.programe_code)
            rc.append(i.programe_name)
            rc.append(i.list)
            rc.append(i.link_to_the_relevent_document)

            toex.append(rc)
        outfile = str(settings.BASE_DIR) + str(settings.STATIC_URL) + "curiculam_details2.xlsx"
        book = openpyxl.load_workbook(outfile)
        sheet = book.active
        for row in toex:
            sheet.append(row)
        book.save(outfile)
        return render(request, 'curiculam_details2/success.html')
    return render(request,'curiculam_details2/1.3.2.html')