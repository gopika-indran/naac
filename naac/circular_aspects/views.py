from django.shortcuts import render
from circular_aspects.models import CircularAspects
from naac import settings
import openpyxl
# Create your views here.
def post(request):
    if request.method=="POST":
        obj=CircularAspects()
        obj.year=request.POST.get('year')
        obj.name_of_the_body_in_which_full_time_teacher_participated=request.POST.get('tech')
        obj.name_of_the_teacher_participated=request.POST.get('tch')
        obj.save()
        obb = CircularAspects.objects.all()
        toex = []
        for i in obb:
            rc = []
            rc.append(i.year)
            rc.append(i.name_of_the_body_in_which_full_time_teacher_participated)
            rc.append(i.name_of_the_teacher_participated)
            toex.append(rc)
        outfile = str(settings.BASE_DIR) + str(settings.STATIC_URL) + "circular_aspects.xlsx"
        book = openpyxl.load_workbook(outfile)
        sheet = book.active
        for row in toex:
            sheet.append(row)
        book.save(outfile)
        return render(request, 'circular_aspects/success.html')
    return render(request,'circular_aspects/circular aspects1.html')