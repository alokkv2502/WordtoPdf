# Pull the latest Docker image from your repository
docker pull alok772/django-documents-app:latest

# Stop any running container with the name "django-documents-app"
if (docker ps -q -f name=django-documents-app) {
    docker stop django-documents-app
}

# Remove any existing container with the name "django-documents-app"
if (docker ps -a -q -f name=django-documents-app) {
    docker rm django-documents-app
}

# Run the Docker container
docker run -d -p 8000:8000 --name django-documents-app alok772/django-documents-app:latest
