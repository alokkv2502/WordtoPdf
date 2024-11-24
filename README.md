
Django Documents Converter

This project is a Django-based web application designed to handle document processing and conversion. It allows users to upload and process various types of files.

---

Project Structure

converter/
├── converter/           # Django project folder
│   ├── __init__.py
│   ├── asgi.py
│   ├── settings.py      # Project settings
│   ├── urls.py          # URL configuration
│   ├── wsgi.py          # WSGI entry point
├── documents/           # Django app folder
│   ├── migrations/      # Database migrations
│   ├── templates/       # HTML templates
│   ├── static/          # CSS, JS, images
│   ├── views.py         # Application logic
│   ├── models.py        # Database models
│   ├── admin.py         # Admin configuration
├── manage.py            # Django management script
├── Dockerfile           # Docker build instructions
├── requirements.txt     # Python dependencies
├── README.md            # Project documentation

---

Features

- Upload and process various document formats.
- Static and responsive design using HTML and CSS.
- Dockerized for deployment and portability.

---

Requirements

- Python 3.9 or later
- Django 3.2 or later
- Docker (for containerized deployment)

---

Setup and Installation

1. Clone the Repository
    git clone https://github.com/alokkv2502/WordtoPdf.git
    

2. Set Up a Virtual Environment
    python -m venv env
    source env/bin/activate  # On Windows: .\env\Scripts\activate

3. Install Dependencies
    pip install -r requirements.txt

4. Configure Environment Variables
Create a .env file in the project root and configure the following:
    DJANGO_SECRET_KEY=your_secret_key
    DEBUG=True
    ALLOWED_HOSTS=localhost,127.0.0.1
    DATABASE_URL=sqlite:///db.sqlite3

---

Running the Application Locally

1. Apply migrations:
    python manage.py migrate

2. Collect static files:
    python manage.py collectstatic

3. Start the development server:
    python manage.py runserver

4. Access the application at:
    http://127.0.0.1:8000

---

Docker Deployment

1. Build the Docker Image
    docker build -t alok772/django-documents-app .

2. Run the Docker Container
    docker run -d -p 8000:8000 --name django-documents-app alok772/django-documents-app:latest

3. Access the Application
Visit the app in your browser at:
    http://127.0.0.1:8000

---

Environment Variables for Production
When deploying to a production environment, set the following environment variables:

    DJANGO_SECRET_KEY=your_production_secret_key
    DEBUG=False
    ALLOWED_HOSTS=your-domain.com
    DATABASE_URL=your-database-url

---

Deploying on Render

1. Push the code to GitHub:
    git add .
    git commit -m "Initial commit"
    git push origin main

2. Connect your GitHub repository to Render.

3. Use the following Build Command:
    pip install -r requirements.txt && python manage.py migrate && python manage.py collectstatic --noinput

4. Use the following Start Command:
    gunicorn converter.wsgi:application --bind 0.0.0.0:$PORT

---

Technologies Used

- Backend: Django 3.2
- Frontend: HTML, CSS
- Database: SQLite (default), PostgreSQL (for production)
- Deployment: Docker, Render

---

Contributing

1. Fork the repository.
2. Create a feature branch:
    git checkout -b feature-name
3. Commit changes:
    git commit -m "Add feature description"
4. Push to the branch:
    git push origin feature-name
5. Create a pull request.


