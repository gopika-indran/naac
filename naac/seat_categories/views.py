from django.shortcuts import render
from seat_categories.models import SeatCategories
from naac import settings
import openpyxl
# Create your views here.
def post(request):
    if request.method=="POST":
        obj=SeatCategories()
        obj.year=request.POST.get('year')
        obj.sc=request.POST.get('ta')
        obj.st=request.POST.get('tb')
        obj.obc=request.POST.get('tc')
        obj.gen=request.POST.get('td')
        obj.other=request.POST.get('te')
        obj.sc=request.POST.get('tf')
        obj.st=request.POST.get('tg')
        obj.obc=request.POST.get('th')
        obj.gen=request.POST.get('ti')
        obj.obc=request.POST.get('tj')
        obj.save()
        obb = SeatCategories.objects.all()
        toex = []
        for i in obb:
            rc = []
            rc.append(i.year)
            rc.append(i.sc)
            rc.append(i.st)
            rc.append(i.obc)
            rc.append(i.gen)
            rc.append(i.other)
            rc.append(i.sc)
            rc.append(i.st)
            rc.append(i.obc)
            rc.append(i.gen)
            rc.append(i.obc)

            toex.append(rc)
        outfile = str(settings.BASE_DIR) + str(settings.STATIC_URL) + "seat_categories.xlsx"
        book = openpyxl.load_workbook(outfile)
        sheet = book.active
        for row in toex:
            sheet.append(row)
        book.save(outfile)
        return render(request, 'seat_categories/success.html')
    return render(request,'seat_categories/seat categories.html')