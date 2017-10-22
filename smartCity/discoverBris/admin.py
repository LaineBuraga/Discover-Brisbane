from django.contrib import admin
from .models import AuthUser, Location, Feedback
# Register your models here.

admin.site.register(AuthUser)
admin.site.register(Location)
admin.site.register(Feedback)
