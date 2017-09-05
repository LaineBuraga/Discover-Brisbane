import textwrap

from django.http import HttpResponse
from django.views.generic.base import View



def index(request):
    response_text = textwrap.dedent('''\
        <html>
            <head>
                <style>
                    div.container {
                        width: 100%;
                    }

                    header, footer {
                        padding: 1em;
                        clear: left;
                        text-align: center;
                        color: white;
                        background-color: #3366cc;
                    }
                    ul.breadcrumb {
                        width: 100%;
                        padding: 10px 16px;
                        list-style: none;
                        background-color: #eee;
                    }
                    ul.breadcrumb li {
                        display: inline;
                        font-size: 18px;
                    }
                    ul.breadcrumb li+li:before {
                        padding: 8px;
                        color: black;
                        content: "/\00a0";
                    }
                    ul.breadcrumb li a {
                        color: #0275d8;
                        text-decoration: none;
                    }
                    ul.breadcrumb li a:hover {
                        color: #01447e;
                        text-decoration: underline;
                    }
                    img.place {
                        padding: 1em;
                        float: left;
                    }
                    article {
                        margin-left: 310px;
                        padding: 1em;
                        overflow: hidden;
                    }
                </style>
            </head>
            <body>
                
                <div class="container">
                    <header>
                        <h1>Discover Brisbane</h1>
                    </header>
                    <ul class="breadcrumb">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Colleges</a></li>
                        <li>QUT</li>
                    </ul>
                    <img src="../images/qut.jpg" width="300" class="place">
                    <article>
                        <h1>Queensland University of Technology</h1>
                        <p>Address: 2 George St, Brisbane City QLD 4000</p>
                        <p>Phone No: (07) 3138 2000</p>
                        <p>Email: askqut@qut.edu.au</p>
                        <p>Departments: Business, Creative Industries, Education, Health, Law, Science and Engineering</p>
                    </article>
                    <footer>&copy; DiscoverBrisbane.com</footer>
                </div>
            </body>
        </html>
    ''')
    return HttpResponse(response_text)