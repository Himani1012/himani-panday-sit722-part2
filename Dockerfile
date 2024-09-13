# Dockerfile for book_catalog microservice
# Base image
FROM python:3.11-alpine

# Set working directory
WORKDIR /app/

# Copy requirements file
COPY book_catalog/requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt


# Copy the source code
COPY /book_catalog/ .

# Set environment variables
ENV FLASK_ENV=development

# Expose the application port
EXPOSE 5000

# Command to run the application
CMD ["uvicorn","main:app","--host", "0.0.0.0", "--port", "8000"]
