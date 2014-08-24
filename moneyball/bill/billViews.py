from django.shortcuts import render_to_response
from django.template import RequestContext
from moneyball.model import User

__author__ = 'Administrator'

def profile(request):
    id = request.session.get('id',None)
    try:
        user = User.objects.get(id=id)
    except Exception as e:
        error = "用户不存在"
        print error
        return render_to_response("login.html",error)
    return render_to_response("bill/profile.html",{},RequestContext(request,locals()))