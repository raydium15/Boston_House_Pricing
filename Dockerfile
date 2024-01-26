# Use Python 3.7 as the base image
FROM python:3.7.17

# Set the working directory to /app
WORKDIR /app

# Copy the contents of the Boston house pricing folder to the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Run your Flask application
CMD ["python", "app.py"]
