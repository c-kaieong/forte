# Use an official Python runtime as a parent image
FROM python:2.7-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV AUTH_SECRET ""
ENV AUTH_PASSWORD ""
ENV CELERY_BROKER_URL ""
ENV FLASK_APP "server/routes.py"

# Run app.py when the container launches
CMD ["flask", "run", "--host=0.0.0.0"]
