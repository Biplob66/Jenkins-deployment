# Use the official Python image
FROM python:3

# Set the working directory in the container
WORKDIR /app

# Install Django directly (and any other dependencies)
RUN pip install django==3.2

# Copy the rest of the application code
COPY . .

# Expose port 8000 for the Django app
EXPOSE 8000

# Run migrations and start the server
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]
ENV PYTHONPATH="/app"
