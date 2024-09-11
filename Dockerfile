# Use the official Python image
FROM python:3

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file (if you have one) and install dependencies
# Optional: If you have a requirements.txt, uncomment the next two lines
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt

# Install Django
RUN pip install django==3.2

# Copy the current directory contents into the container
COPY . .

# Open the port 8000 to allow outside world to connect to the container
EXPOSE 8000

# Run migrations and start the server when the container launches
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]
