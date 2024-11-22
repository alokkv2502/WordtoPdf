from django.db import models

# Create your models here.
from django.db import models

class Document(models.Model):
    file = models.FileField(upload_to='uploads/')
    uploaded_at = models.DateTimeField(auto_now_add=True)
    metadata = models.JSONField(null=True, blank=True) 
    pdf_file = models.FileField(upload_to='converted/', null=True, blank=True)
