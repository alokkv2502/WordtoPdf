from django.contrib import admin
from django.urls import path
from documents.views import upload_file, success, download_pdf
from django.conf.urls.static import static
from django.conf import settings
urlpatterns = [
    path('admin/', admin.site.urls),
    path('', upload_file, name='upload'),
    path('success/<int:doc_id>/', success, name='success'),
    path('download/<int:doc_id>/', download_pdf, name='download'),
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
