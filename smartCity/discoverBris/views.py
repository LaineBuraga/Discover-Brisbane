from django.http import HttpResponse
from django.views.decorators.csrf import csrf_protect
from django.template import loader
from django.shortcuts import render
from .models import Locations
from django.http import Http404


# Create your views here.

def index(request):
    return render(request, 'homepage/homepage.html', {})

def locations(request):
    all_locations = Locations.objects.all()
    context = {'all_locations': all_locations}
    return render(request, 'locations/locations.html', context)

def location(request, location_id):
    try:
        location = Locations.objects.get(pk=location_id)
    except Locations.DoesNotExist:
        raise Http404("Location does not exist")
    return render(request, 'location/location.html', {'location': location})

def result(request):
    return render(request, 'result/locationList.html', {})

def test(request):
    return render(request, 'test/test.html', {})

@csrf_protect
def successView(request):
    return render(request, 'admin/adminPage.html', {})
