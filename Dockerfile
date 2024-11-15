# Back4App WOODcraft
# Official Python image from the Docker Hub
FROM python:3.9

# Set the working directory in Docker
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 for Flask
EXPOSE 5000

# Run Flask app when the container launches
CMD ["python", "main.py"]
