# Use the official Python image as a base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install Flask
RUN pip install --no-cache-dir Flask

# Expose port 5000 to the outside world
EXPOSE 5002

# Run the Flask application
CMD ["python3", "index.py", "--host=0.0.0.0"]
