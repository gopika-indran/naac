from django.shortcuts import render
from teaching_quality.models import TeachingQuality
from naac import settings
import openpyxl
# Create your views here.
def post(request):
    if request.method=="POST":
        obj=TeachingQuality()
        obj.name_of_full_time_teachers=request.POST.get('ft')
        obj.qualification=request.POST.get('yo')
        obj.reserch_guides=request.POST.get('rr')
        obj.year_of_reserch_guides=request.POST.get('rg')
        obj.is_the_teacher_still_serving_the_institution=request.POST.get('sf')
        obj.name_of_the_scholor=request.POST.get('ns')
        obj.year_of_registeration_of_the_scholor=request.POST.get('rs')
        obj.title_of_the_thesis_for_scholar=request.POST.get('ts')
        obj.save()
        obb = TeachingQuality.objects.all()
        toex = []
        for i in obb:
            rc = []

            rc.append(i.name_of_full_time_teacher)
            rc.append(i.qualification)
            rc.append(i.reasearch_guide)
            rc.append(i.is_the_teacher_still_serving)
            rc.append(i.name_of_the_scholar)
            rc.append(i.year_of_registration_of_the_scholar)
            rc.append(i.title_of_the_thesis_for_scholar)

            toex.append(rc)
        outfile = str(settings.BASE_DIR) + str(settings.STATIC_URL) + "teaching_quality.xlsx"
        book = openpyxl.load_workbook(outfile)
        sheet = book.active
        for row in toex:
            sheet.append(row)
        book.save(outfile)
        return render(request, 'teaching_quality/success.html')
    return render(request,'teaching_quality/teacher quality.html')