# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from __future__ import unicode_literals

from django.db import models


class Locations(models.Model):
    location_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=256, blank=True, null=True)
    address = models.CharField(max_length=256, blank=True, null=True)
    phone_number = models.CharField(max_length=15, blank=True, null=True)
    email = models.CharField(max_length=256, blank=True, null=True)
    category = models.CharField(max_length=45, blank=True, null=True)
    photo_name = models.CharField(max_length=256, blank=True, null=True)
    departments = models.CharField(max_length=256, blank=True, null=True)
    industry_type = models.CharField(max_length=45, blank=True, null=True)

    class Meta:
        db_table = 'locations'


class Users(models.Model):
    user_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=45, blank=True, null=True)
    surname = models.CharField(max_length=45, blank=True, null=True)
    username = models.CharField(max_length=45, blank=True, null=True)
    salt = models.CharField(max_length=256, blank=True, null=True)
    password = models.CharField(max_length=256, blank=True, null=True)
    phone_number = models.CharField(max_length=12, blank=True, null=True)
    email = models.CharField(max_length=256, blank=True, null=True)
    type = models.CharField(max_length=45, blank=True, null=True)

    class Meta:
        db_table = 'users'