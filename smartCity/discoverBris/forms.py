from .models import Client
from django import forms

class ClientForm(forms.ModelForm):
    password = forms.CharField(widget=forms.PasswordInput)
    
    class Meta:
        model = Client
        fields = ['username', 'email', 'first_name', 'last_name', 'password', 'phone_number', 'client_type']

class ClientLogin(forms.ModelForm):
    password = forms.CharField(widget=forms.PasswordInput)

    class Meta:
        model = Client
        fields = ['username',  'password']