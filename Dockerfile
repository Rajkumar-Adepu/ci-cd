FROM python:3.8

WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install the dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port that Flask will run on
EXPOSE 8080

# Define the command to run the Flask application
ENTRYPOINT ["python"]
CMD ["app.py"]
