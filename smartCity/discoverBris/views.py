from django.http import HttpResponse
from django.views.decorators.csrf import csrf_protect
from django.shortcuts import render
from .models import Location, Client
from django.http import Http404


# Create your views here.

def index(request):
    all_locations = Location.objects.all()
    context = {'all_locations': all_locations}
    return render(request, 'homepage/homepage.html', context)

def locations(request):
    all_locations = Location.objects.all()
    context = {'all_locations': all_locations}
    return render(request, 'locations/locations.html', context)

def location(request, location_id):
    try:
        location = Location.objects.get(pk=location_id)
    except Locations.DoesNotExist:
        raise Http404("Location does not exist")
    return render(request, 'location/location.html', {'location': location})

#result list --- test!
def collegeList(request):
    all_locations = Location.objects.all()
    return render(request, 'list/collegeList.html', {'all_locations': all_locations})

def hotelList(request):
     all_locations = Location.objects.all()
     return render(request, 'list/hotelList.html', {'all_locations': all_locations})

def industryList(request):
  all_locations = Location.objects.all()
  return render(request, 'list/industryList.html', {'all_locations': all_locations})

def libraryList(request):
   all_locations = Location.objects.all()
   return render(request, 'list/libraryList.html', {'all_locations': all_locations})

def mallList(request):
    all_locations = Location.objects.all()
    return render(request, 'list/mallList.html', {'all_locations': all_locations})

def museumList(request):
    all_locations = Location.objects.all()
    return render(request, 'list/museumList.html', {'all_locations': all_locations})

def parkList(request):
    all_locations = Location.objects.all()
    return render(request, 'list/parkList.html', {'all_locations': all_locations})

def restaurantList(request):
    all_locations = Location.objects.all()
    return render(request, 'list/restauranList.html', {'all_locations': all_locations})

def zooList(request):
    all_locations = Location.objects.all()
    return render(request, 'list/zooList.html', {'all_locations': all_locations})

#account
def business(request):
    return render(request, 'account/business.html', {})

def student(request):
    return render(request, 'account/student.html', {})

def tourist(request):
    return render(request, 'account/tourist.html', {})
#admin --- test!
#def successView(request):
#    all_locations = Location.objects.all()
#    return render(request, 'admin/adminPage.html', {'all_locations': all_locations})
