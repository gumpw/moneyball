from django import forms
from django.db import models

class Index(models.Model):
    title = models.CharField(max_length=150)
    description = models.CharField(max_length=150)

class LoginForm(forms.Form):
    username = forms.CharField(max_length=30)
    password = forms.CharField(max_length=80)

class User(models.Model):
    id = models.IntegerField(max_length=7,primary_key=True,unique=True)
    username = models.CharField(max_length=30,null=False)
    password = models.CharField(max_length=120)
    source = models.CharField(max_length=10)
    email = models.CharField(max_length=50)
    phone = models.CharField(max_length=30)
    note = models.CharField(max_length=100)
    nickname = models.CharField(max_length=30)
    job = models.CharField(max_length=30)
    city = models.CharField(max_length=30)
    province = models.CharField(max_length=30)
    head = models.CharField(max_length=30)
    switch = models.IntegerField(max_length=1)
    birthday = models.DateField()
    sex = models.IntegerField(max_length=1)
    income = models.IntegerField(max_length=1)

class Province(models.Model):
    ProId = models.IntegerField(max_length=11)
    ProName = models.CharField(max_length=50)
    ProSort = models.IntegerField(max_length=11)
    ProRemark = models.CharField(max_length=50)

class city(models.Model):
    CityID = models.IntegerField(max_length=11)
    CityName = models.CharField(max_length=50)
    ProID = models.IntegerField(max_length=11)
    CitySort = models.IntegerField(max_length=11)
    Initial = models.CharField(max_length=2)
    WeaId = models.IntegerField(max_length=11)
    lng = models.CharField(max_length=30)
    lat = models.CharField(max_length=30)
    status = models.IntegerField(max_length=11)
    visibleFlag = models.CharField(max_length=1)

class occupation(models.Model):
    id = models.IntegerField(max_length=3)
    name = models.CharField(max_length=10)
    type = models.IntegerField(max_length=1)

class inoutcome(models.Model):
    id = models.IntegerField(max_length=11)
    name = models.CharField(max_length=10)
    type = models.IntegerField(max_length=1)
    refer = models.IntegerField(max_length=11)

class billrecord(models.Model):
    id = models.IntegerField(max_length=11)
    userid = models.IntegerField(max_length=7)
    record_date = models.DateField()
    name = models.CharField(max_length=100)
    account_id = models.IntegerField(max_length=11)
    money  = models.DecimalField(max_length=20)
    type = models.IntegerField(max_length=1)
    note = models.CharField(max_length=100)
    auto_record = models.IntegerField(max_length=1)

class bank(models.Model):
    code = models.CharField(max_length=10)
    name = models.CharField(max_length=10)

class accounttype(models.Model):
    id = models.IntegerField(max_length=2)
    name = models.CharField(max_length=10)
    type = models.CharField(max_length=10)

class account(models.Model):
    id = models.IntegerField(max_length=11)
    userid = models.IntegerField(max_length=7)
    account_type = models.CharField(max_length=10)
    name = models.CharField(max_length=30)
    init = models.IntegerField(max_length=30)
    account_name = models.CharField(max_length=10)
    bank = models.CharField(max_length=20)
    suffix4 = models.CharField(max_length=30)
    deposit_type = models.IntegerField(max_length=1)
    note = models.CharField(max_length=100)
    yield_rate = models.IntegerField(max_length=10)
    limit = models.IntegerField(max_length=20)
    arrears = models.IntegerField(max_length=20)
    has_fee = models.IntegerField(max_length=1)
    annualfee = models.IntegerField(max_length=5)
    bill_date = models.DateField()
    repayment_date = models.DateField()