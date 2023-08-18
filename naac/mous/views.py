from django.shortcuts import render
from mous.models import Mous
from naac import settings
import openpyxl
# Create your views here.
def post(request):
    if request.method=="POST":
        obj=Mous()
        obj.organisation_with_which_mou_is_signed=request.POST.get('ms')
        obj.list_the_actual_activities_under_each_mou_year_wise=request.POST.get('am')
        obj.number_of_student_teachers_participated_under_mous=request.POST.get('ns')
        obj.year_of_mou=request.POST.get('ym')
        obj.name_of_the_institution_industry_corporate_house=request.POST.get('ni')
        obj.save()
        obb = Mous.objects.all()
        toex = []
        for i in obb:
            rc = []
            rc.append(i.organisation_with_which_mou_is_signed)
            rc.append(i.list_the_actual_activities_under_each_mou_year_wise)
            rc.append(i.number_of_student_teachers_participated_under_mous)
            rc.append(i.year_of_mou)
            rc.append(i.name_of_the_institution_industry_corporate_house)

            toex.append(rc)
        outfile = str(settings.BASE_DIR) + str(settings.STATIC_URL) + "mous.xlsx"
        book = openpyxl.load_workbook(outfile)
        sheet = book.active
        for row in toex:
            sheet.append(row)
        book.save(outfile)
        return render(request, 'mous/success.html')
    return render(request,'mous/MoUs.html')