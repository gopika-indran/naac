from django.shortcuts import render
from research.models import Research
from naac import settings
import openpyxl
# Create your views here.
def post(request):
    if request.method=="POST":
        obj=Research()
        obj.name_of_the_project_endownments_chairs=request.POST.get('np')
        obj.name_of_the_principle_investigator_coinvestigator=request.POST.get('pi')
        obj.department_of_principle_investigator=request.POST.get('dp')
        obj.year_of_award=request.POST.get('yy')
        obj.amount_sanctioned=request.POST.get('as')
        obj.duration_of_project=request.POST.get('op')
        obj.name_of_the_funding_agency=request.POST.get('fa')
        obj.type_government_nongovernment_field=request.POST.get('gn')
        obj.save()
        obb = Research.objects.all()
        toex = []
        for i in obb:
            rc = []
            rc.append(i.name_of_the_project_endownments_chairs)
            rc.append(i.name_of_the_principle_investigator_coinvestigator)
            rc.append(i.department_of_principle_investigator)
            rc.append(i.year_of_award)
            rc.append(i.amount_sanctioned)
            rc.append(i.duration_of_project)
            rc.append(i.name_of_the_funding_agency)
            rc.append(i.type_government_nongovernment_field)

            toex.append(rc)
        outfile = str(settings.BASE_DIR) + str(settings.STATIC_URL) + "research.xlsx"
        book = openpyxl.load_workbook(outfile)
        sheet = book.active
        for row in toex:
            sheet.append(row)
        book.save(outfile)
        return render(request, 'research/success.html')
    return render(request,'research/research.html')