#!/bin/bash

# Pull the latest image from DockerHub
docker pull your-dockerhub-username/django-documents-app:latest

# Stop and remove any existing container with the same name
docker stop django-documents-app || true
docker rm django-documents-app || true

# Run the container
docker run -d -p 8000:8000 --name django-documents-app alok772/django-documents-app:latest
