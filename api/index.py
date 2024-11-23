from daphne import get_asgi_application
from converter.asgi import application

app = get_asgi_application(application)
