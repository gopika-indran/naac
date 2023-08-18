from django.shortcuts import render
from enrollnment_number1.models import EnrollmentNumber1
from naac import settings
import openpyxl
# Create your views here.
def post(requset):
    if requset.method=="POST":
        obj=EnrollmentNumber1()
        obj.programme_name=requset.POST.get('pn')
        obj.number_of_seats_sanctioned=requset.POST.get('')
        obj.save()
        obb = EnrollmentNumber1.objects.all()
        toex = []
        for i in obb:
            rc = []
            rc.append(i.programme_name)
            rc.append(i.number_of_seats_sanctioned)

            toex.append(rc)
        outfile = str(settings.BASE_DIR) + str(settings.STATIC_URL) + "enrollnment_number1.xlsx"
        book = openpyxl.load_workbook(outfile)
        sheet = book.active
        for row in toex:
            sheet.append(row)
        book.save(outfile)
        return render(requset, 'enrollnment_number1/success.html')
    return render(requset,'enrollnment_number1/enrollnment number1.html')