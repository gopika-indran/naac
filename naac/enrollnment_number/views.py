from django.shortcuts import render
from enrollnment_number.models import EnrollmentNumber
from naac import settings
import openpyxl
# Create your views here.
def post(request):
    if request.method=="POST":
        obj=EnrollmentNumber()
        obj.program_name=request.POST.get('pn')
        obj.program_code=request.POST.get('pc')
        obj.number_of_seat_sanction=request.POST.get('ns')
        obj.number_of_students_admited=request.POST.get('sa')
        obj.save()
        obb = EnrollmentNumber.objects.all()
        toex = []
        for i in obb:
            rc = []
            rc.append(i.program_name)
            rc.append(i.program_code)
            rc.append(i.number_of_seat_sanction)
            rc.append(i.number_of_students_admited)

            toex.append(rc)
        outfile = str(settings.BASE_DIR) + str(settings.STATIC_URL) + "enrollnment_number.xlsx"
        book = openpyxl.load_workbook(outfile)
        sheet = book.active
        for row in toex:
            sheet.append(row)
        book.save(outfile)
        return render(request, 'enrollnment_number/success.html')
    return render(request,'enrollnment_number/enrollnment number.html')