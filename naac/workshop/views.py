from django.shortcuts import render
from workshop.models import Workshop
from naac import settings
import openpyxl
# Create your views here.
def post(request):
    if request.method=="POST":
        obj=Workshop()
        obj.name_of_the_workshop_seminar=request.POST.get('ws')
        obj.number_of_participants=request.POST.get('op')
        obj.date_from_to=request.POST.get('ft')
        obj.year=request.POST.get('yy')
        obj.link_to_the_activity_report_on_the_website=request.POST.get('la')
        obj.save()
        obb =Workshop.objects.all()
        toex = []
        for i in obb:
            rc = []

            rc.append(i.name_of_the_workshop_seminar)
            rc.append(i.number_of_participants)
            rc.append(i.date_from_to)
            rc.append(i.year)
            rc.append(i.link_to_the_activity_report_on_the_website)

            toex.append(rc)
        outfile = str(settings.BASE_DIR) + str(settings.STATIC_URL) + "workshop.xlsx"
        book = openpyxl.load_workbook(outfile)
        sheet = book.active
        for row in toex:
            sheet.append(row)
        book.save(outfile)
        return render(request, 'workshop/success.html')
    return render(request,'workshop/workshop.html')