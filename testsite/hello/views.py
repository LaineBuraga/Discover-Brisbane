import textwrap

from django.http import HttpResponse
from django.views.generic.base import View

class HomePageView(View):

    def dispatch(request, *args, **kwargs):
        response_text = textwrap.dedent('''\
           <html>

            <head>
                <title>Greetings to the world</title>
            </head>
            <body>
                <div id="title">
                    <h1>Greetings to the world</h1>
                    <p>Hello, world!</p>
                </div>
                <div id="anothersect" style="background-color:#0000FF">
                    <h3> ...heee... </h3>
                </div>
            </body>
            </html>
        ''')
        return HttpResponse(response_text)
