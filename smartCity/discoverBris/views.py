from django.http import HttpResponse
from django.views.decorators.csrf import csrf_protect
from django.template import loader
from django.shortcuts import render


# Create your views here.

def index(request):
    return render(request, 'homepage/homepage.html', {})

def indiv(request):
    return render(request,'indiv/indiv.html', {})

@csrf_protect
def successView(request):
    return render(request, 'admin/adminPage.html', {})
