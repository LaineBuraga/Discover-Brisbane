from django.http import HttpResponse
from django.template import loader
from django.shortcuts import render


# Create your views here.

def index(request):
    return render(request, 'homepage/homepage.html', {})
