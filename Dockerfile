# Use an official Python image as the base image
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install dependencies from the requirements.txt file
RUN pip install --no-cache-dir -r requirements.txt

# If you don't have a requirements.txt, you can install the packages directly like this:
# RUN pip install --no-cache-dir flask==2.0.3 werkzeug==2.0.3

# Expose the port that Flask will run on
EXPOSE 8080

# Define the command to run the Flask application
ENTRYPOINT ["python"]
CMD ["app.py"]
