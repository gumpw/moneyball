from moneyball.model import Index

__author__ = 'joey'
from django.shortcuts import render_to_response

def index(request):
    #data = Index.objects.first()

    print "wocao"
    return render_to_response("index.html")#, data)

def index2(request):
    return render_to_response("index_bak.html")

def login(request):
    return render_to_response("login.html")

