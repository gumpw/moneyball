__author__ = 'joey'


from django.db import models

class Index(models.Model):
    title = models.CharField(max_length=150)
    description = models.CharField(max_length=150)
    