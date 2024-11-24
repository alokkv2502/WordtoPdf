

docker alok772/django-documents-app:latest

docker stop django-documents-app || true
docker rm django-documents-app || true

docker run -d -p 8000:8000 --name django-documents-app alok772/django-documents-app:latest
