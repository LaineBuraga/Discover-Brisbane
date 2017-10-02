from django.http import HttpResponse
from django.views.decorators.csrf import csrf_protect
from django.template import loader
from django.shortcuts import render
from .models import Locations, Client
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

#client --- test!
def detail(request):
    all_locations = Locations.objects.all()
    template = loader.get_template('discoverBris/adminPage.html')
    context = {'all_locations': all_locations}
    return HttpResponse('')

#old - test #1
#def detail(request, client_id)
#   all_clients = Client.objects.all()
#    html = ''
#    for client in all_clients:
#        url = '/discoverBris/' + str(client_id) + '/'
#        html += '<a href="' + url + '">' + client.client_type + '</a><br>'
#    return HttpResponse(html)
    #return HttpResponse(<h2>Details of customer ID" + str(client_id) + "</h2>")



#static pages
def result(request):
    return render(request, 'result/locationList.html', {})

def test(request):
    return render(request, 'test/test.html', {})

@csrf_protect
def successView(request):
    return render(request, 'admin/adminPage.html', {})
