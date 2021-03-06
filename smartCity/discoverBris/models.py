# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from __future__ import unicode_literals

from django.db import models
from django.core.urlresolvers import reverse
from django.contrib.auth.models import AbstractUser

class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=80)

    class Meta:
        #managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        #managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        #managed = False
        db_table = 'auth_user'

    def __str__(self):
        return self.first_name + " " + self.last_name

class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)

class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.SmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        #managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        #managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        #managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        #managed = False
        db_table = 'django_session'

class Location(models.Model):
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
        managed = False
        db_table = 'location'

    def __str__(self):
       return self.name

class Client(AbstractUser):
    client_id = models.AutoField(primary_key=True)
    #email = models.CharField(unique=True, max_length=255)
    #firstname = models.CharField(max_length=45, blank=True, null=True)
    #lastname = models.CharField(max_length=45, blank=True, null=True)
    #salt = models.CharField(max_length=255, blank=True, null=True)
    #password = models.CharField(max_length=255, blank=True, null=True)
    phone_number = models.CharField(max_length=10, blank=True, null=True)
    client_type = models.CharField(max_length=11, blank=True, null=True)

    class Meta:
        #managed = False
        db_table = 'client'

    def __str__(self):
        return self.first_name + " " + self.last_name
        return self.firstname + " " + self.lastname

class Feedback(models.Model):
    email = models.CharField(max_length=255)
    message = models.TextField()
    name = models.CharField(max_length=45)
    feedback_id = models.AutoField(primary_key=True)

    class Meta:
        managed = False
        db_table = 'feedback'

    def __str__(self):
        return self.name + ' ( ' + self.email + ' )'
