from django.http import HttpResponseRedirect
from django.shortcuts import render
from login.models import Login
# Create your views here.

def post_log(request):
    if request.method =="POST":
        name = request.POST.get("un")
        password = request.POST.get("pw")
        obj = Login.objects.filter(username=name, password=password)
        tp=""
        for ob in obj:
            tp = ob.type
            uid = ob.u_id
            if tp=="office":
                request.session["u_id"] = uid
                return HttpResponseRedirect('/temp/office/')
            elif tp == "department":
                request.session["u_id"] = uid
                return HttpResponseRedirect('/temp/department/')
            elif tp == "iqac":
                request.session["u_id"]= uid
                return HttpResponseRedirect('/temp/iqac/')
            elif tp == "principle":
                request.session["u_id"] = uid
                return HttpResponseRedirect('/temp/principle/')
            elif tp == "teacher":
                request.session["u_id"] = uid
                return HttpResponseRedirect('/temp/teacher/')
            elif tp == "student_related":
                request.session["u_id"] = uid
                return HttpResponseRedirect('/temp/student_related/')
            else:
                objilist = "Incorrect username or password...please try again..!"
                context = {
                'msg': objilist
                }
                return render (request,'login/login.html',context)
    return render (request,'login/login.html')
from django.http import HttpResponse
from django.template.loader import get_template
from xhtml2pdf import pisa

def pdf(request):
    # To Generate Checklist pdf
        # return HttpResponse('hello')
        # print("helloooooooooo")
    # ob = Login.objects.filter(job_no=idd, pr_code=3)
    # context = {
    #     'ok': ob,
    # }

    template_path = 'login/project.html'
    response = HttpResponse(content_type='application/pdf')
    response['Content-Disposition'] = 'attachment; filename="final_report.pdf"'
    # find the template and render it.
    template = get_template(template_path)
    html = template.render()

        # create a pdf
    pisa_status = pisa.CreatePDF(
    html, dest=response)
        # if error then show some funny view
    if pisa_status.err:
        return HttpResponse('We had some errors <pre>' + html + '</pre>')
    return response

    # return render(request, 'login/project.html')



def down(request):
    return render(request,'login/download.html')