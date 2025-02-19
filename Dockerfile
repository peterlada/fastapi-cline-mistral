# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the uv.json file into the container
COPY uv.json .

# Install dependencies using uv
RUN pip install uv && uv install

# Copy the rest of the application code into the container
COPY app /app

# Expose the port the app runs on
EXPOSE 8000

# Command to run the application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
