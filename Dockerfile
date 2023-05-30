# Use a base Python image
FROM python:3.9-alpine
ENV PYTHONUNBUFFERED 1

# Set the working directory
WORKDIR /core
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy the Django project files to the container
COPY . .

# Expose the necessary port for your Django application
EXPOSE 80

# Define the command to run your Django application
CMD ["python", "manage.py", "runserver", "0.0.0.0:80"]
