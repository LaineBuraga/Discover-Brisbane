from .models import Client, Feedback
from django import forms

class ClientForm(forms.ModelForm):
    password = forms.CharField(widget=forms.PasswordInput)
    confirm_password=forms.CharField(widget=forms.PasswordInput)
    Choices = (('Business', 'Business'),('Student', 'Student'),('Tourist', 'Tourist'),)
    client_type = forms.ChoiceField(choices=Choices)

    class Meta:
        model = Client
        fields = ['username', 'email', 'first_name', 'last_name', 'phone_number', 'client_type', 'password']
    
    def clean(self):
        cleaned_data = super(ClientForm, self).clean()
        password = cleaned_data.get("password")
        confirm_password = cleaned_data.get("confirm_password")

        if password != confirm_password:
            raise forms.ValidationError(
                "password and confirm_password does not match"
            )

class ClientLogin(forms.ModelForm):
    password = forms.CharField(widget=forms.PasswordInput)

    class Meta:
        model = Client
        fields = ['username',  'password']

class FeedbackForm(forms.ModelForm):
    email = forms.CharField(required=True)
    message = forms.CharField(widget=forms.Textarea, required=True)

    class Meta:
        model = Feedback
        fields = ['email', 'message']
