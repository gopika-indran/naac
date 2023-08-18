from django.shortcuts import render
from activity.models import Activity
from naac import settings
import openpyxl
# Create your views here.
def post(request):
    if request.method=="POST":
        obj=Activity()
        obj.duration=request.POST.get('dr')
        obj.name_of_the_collabrating_agency_with_contact_details=request.POST.get('nc')
        obj.name_of_the_participant=request.POST.get('np')
        obj.si_no=request.POST.get('sn')
        obj.nature_of_the_activity=request.POST.get('nc')
        obj.title_of_the_collaborative_activity=request.POST.get('tc')
        obj.year_of_collaboration=request.POST.get('yc')
        obj.save()
        obb = Activity.objects.all()
        toex = []
        for i in obb:
            rc = []
            rc.append(i.duration)
            rc.append(i.name_of_the_collabrating_agency_with_contact_details)
            rc.append(i.name_of_the_participant)
            rc.append(i.si_no)
            rc.append(i.nature_of_the_activity)
            rc.append(i.title_of_the_collaborative_activity)
            rc.append(i.year_of_collaboration)

            toex.append(rc)
        outfile = str(settings.BASE_DIR) + str(settings.STATIC_URL) + "activity.xlsx"
        book = openpyxl.load_workbook(outfile)
        sheet = book.active
        for row in toex:
            sheet.append(row)
        book.save(outfile)
        return render(request, 'activity/success.html')
    return render(request,'activity/activity.html')