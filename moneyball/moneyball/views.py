#-*- coding: utf-8 -*-
#coding=utf-8
import json
from django.http import HttpResponseRedirect
from django.template import RequestContext
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth.hashers import make_password, check_password
from http.login import qq
from moneyball.model import LoginForm, User
from django.contrib.auth.hashers import make_password, check_password
__author__ = 'joey'
from django.shortcuts import render_to_response

def index(request):
    #data = Index.objects.first()
    return render_to_response("index.html")

def index2(request):
    return render_to_response("index_bak.html")

def login(request):
    return render_to_response("login.html",{})

def register(request):
    return render_to_response("register.html")

@csrf_exempt
def doReg(request):
    email = request.POST['email']
    password = request.POST['password']
    phone = request.POST['phone']
    encrypted = make_password(password, None, 'pbkdf2_sha256')
    user = User(email=email,password=encrypted,phone=phone)
    try:
        user.save()
        request.session['email']=email
    except Exception as e:
        #在这里添加日志记录
        print e
    return render_to_response("bill/main.html")



def perpetualCalendar(request):
    return render_to_response("perpetualCalendar.html")

def thirdLogin(request):
        code = request.GET.get('code')
        resp =  qq(code)
        if(resp=="failed"):
            error = "登录失败，请稍后重试"
            return render_to_response("login.html",error)
        #创建新用户，从腾讯上获取两个东西：1）昵称，2）头像

@csrf_exempt
def doLogin(request):
    email = request.POST['email']
    password = request.POST['password']
    try:
        user = User.objects.get(email=email)
    except Exception as e:
        error = "登录邮箱不存在"
        print error
        return render_to_response("login.html",error)
    correct = check_password(password,user.password)
    print "登录成功？"
    print correct
    if(not correct):
        error = "登录密码错误"
        return render_to_response("login.html",error)
    request.session['nickname']=user.nickname
    request.session['email']=user.email
    request.session['id']=user.id
    return HttpResponseRedirect("/main")

def main(request):
    id = request.session.get('id',None)
    if(id==None):
        error = "您尚未登录"
        return render_to_response("login.html",error)

    return render_to_response("bill/main.html",{},RequestContext(request,locals()))


def calender(request):
    id = request.session.get('id',None)

    return render_to_response("bill/bill.html",{},RequestContext(request,locals()))


def profile(request):
    id = request.session.get('id',None)
    try:
        user = User.objects.get(id=id)
    except Exception as e:
        error = "用户不存在"
        print error
        return render_to_response("login.html",error)
    return render_to_response("bill/profile.html",{},RequestContext(request,locals()))



