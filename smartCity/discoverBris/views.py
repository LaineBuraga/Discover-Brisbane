from django.http import HttpResponse
from django.views.decorators.csrf import csrf_protect
from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout
from .models import Location, Client
from django.views import generic
from django.views.generic import View
from django.http import Http404
from django.views.generic.edit import CreateView, UpdateView, DeleteView
from django.core.urlresolvers import reverse_lazy
from django.contrib import messages

#temp form
from .forms import ClientForm, ClientLogin

# Create your views here.

def index(request):
    all_locations = Location.objects.all()
    context = {'all_locations': all_locations}
    return render(request, 'homepage/homepage.html', context)

def registration(request):
    return render(request, 'registration/registration.html', {})

#temp registration form
class ClientFormView(View):
    form_class = ClientForm
    template_name = 'registration/registrationtemp.html'
    # display blank form
    def get(self, request):
        form = self.form_class(None)
        return render(request, self.template_name, {'form': form})
    # process form data
    def post(self, request):
        form = self.form_class(request.POST)

        if form.is_valid():
            client = form.save(commit=False)

            # cleaned (normalised) data
            email = form.cleaned_data['email']
            password = form.cleaned_data['password']
            client.set_password(password)
            client.save()

            # returns Client objects if credentials are correct
            client = authenticate(email=email, password=password)

            # log client in if successful authenication
            if client is not None:
                if client.is_active:
                    login(request, client)
                    return redirect('index')
                
        return render(request, self.template_name, {'form': form})


class ClientLoginView(View):
    form_class = ClientLogin
    template_name = 'login/login.html'
    # display blank form
    def get(self, request):
        form = self.form_class(None)
        return render(request, self.template_name, {'form': form})
    # process form data
    def post(self, request):
        form = self.form_class(request.POST)
        
        # get post data
        username = request.POST.get('username', '')
        password = request.POST.get('password', '')

        # returns Client objects if credentials are correct
        client = authenticate(username=username, password=password)
        
        # log client in if successful authenication
        if client is not None:
            if client.is_active:
                login(request, client)
                
                return redirect('index')
                
        return render(request, self.template_name, {'form': form})

def logoutView(request):
    logout(request)
    return render(request, 'logout/logout.html', {})

def searchLocations(request):
    if request.method == "POST":
        searchText = request.POST.get('search', '')
    else:
        searchText = ''

    locations = Location.objects.filter(name__icontains=searchText) | Location.objects.filter(category__icontains=searchText)

    return render(request, 'search/search.html', {'locations' : locations})

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
    return render(request, 'list/restaurantList.html', {'all_locations': all_locations})

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
