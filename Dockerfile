# Use Python 3.9-slim as the base image
FROM python:3.9-slim

# Set environment variables to optimize Python behavior
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set the working directory in the container
WORKDIR /documents

# Install system dependencies
RUN apt-get update && apt-get install -y \
    gcc \
    libpq-dev \
    && apt-get clean

# Copy the requirements file to the working directory
COPY requirements.txt /documents/

# Upgrade pip and install Python dependencies
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project into the container
COPY . /documents/

# Ensure the staticfiles directory exists
RUN mkdir -p /documents/staticfiles

# Set environment variables for Django settings
ENV DJANGO_SETTINGS_MODULE=converter.settings
ENV DEBUG=False

# Collect static files (ensure settings are correctly configured)
RUN python manage.py collectstatic --noinput || exit 0

# Expose the port the app will run on
EXPOSE 8000

# Command to run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
