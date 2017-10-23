from django.contrib import admin
from .models import AuthUser, Client, Location, Feedback
# Register your models here.

admin.site.register(AuthUser)
admin.site.register(Client)
admin.site.register(Location)
admin.site.register(Feedback)
