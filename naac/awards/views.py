from django.shortcuts import render
from awards.models import Awards
from naac import settings
import openpyxl
# Create your views here.
def post(request):
    if request.method=="POST":
        obj=Awards()
        obj.si_no=1
        obj.name_of_the_published=request.POST.get('nop')
        obj.affiliating_institudes_at_the_time_of_publication=request.POST.get('ai')
        obj.isbm_issn_number_of_proceedng=request.POST.get('np')
        obj.year_of_publication=request.POST.get('yp')
        obj.name_of_the_teacher=request.POST.get('nt')
        obj.title_of_the_book_chapters_published=request.POST.get('tb')
        obj.title_of_the_proceeding_of_the_conference=request.POST.get('tpc')
        obj.name_of_the_unference=request.POST.get('tc')
        obj.title_of_the_paper=request.POST.get=('pp')
        obj.save()
        obb = Awards.objects.all()
        toex = []
        for i in obb:
            rc = []
            rc.append(i.si_no)
            rc.append(i.name_of_the_published)
            rc.append(i.affiliating_institudes_at_the_time_of_publication)
            rc.append(i.isbm_issn_number_of_proceedng)
            rc.append(i.year_of_publication)
            rc.append(i.name_of_the_teacher)
            rc.append(i.title_of_the_book_chapters_published)
            rc.append(i.title_of_the_proceeding_of_the_conference)
            rc.append(i.name_of_the_unference)
            rc.append(i.title_of_the_paper)

            toex.append(rc)
        outfile = str(settings.BASE_DIR) + str(settings.STATIC_URL) + "awards.xlsx"
        book = openpyxl.load_workbook(outfile)
        sheet = book.active
        for row in toex:
            sheet.append(row)
        book.save(outfile)
        return render(request, 'awards/success.html')
    return render(request,'awards/awards.html')