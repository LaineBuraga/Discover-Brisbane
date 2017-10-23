from .models import Client, Feedback
from django import forms
from django.core.validators import validate_email

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




class MultiEmailField(forms.Field):
    def to_python(self, value):
        """Normalize data to a list of strings."""
        # Return an empty list if no input was given.
        if not value:
            return []
        return value.split(',')

    def validate(self, value):
        """Check if value consists only of valid emails."""
        # Use the parent's handling of required fields, etc.
        super(MultiEmailField, self).validate(value)
        for email in value:
            validate_email(email)




class FeedbackForm(forms.ModelForm):
    email = forms.EmailField(required=True)
    message = forms.CharField(required=True, max_length=2000,
                                widget=forms.Textarea(),
                                help_text='Write here your message!')

    class Meta:
        model = Feedback
        fields = ['email', 'message']

           #name = forms.CharField(max_length=30)

    def clean(self):
        cleaned_data = super(FeedbackForm, self).clean()
        #name = cleaned_data.get('name')
        email = cleaned_data.get('email')
        message = cleaned_data.get('message')
        #if not name and
        if not email and not message:
            raise forms.ValidationError('You have to write something!')
