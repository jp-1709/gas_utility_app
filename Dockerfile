FROM python:3.9-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Create a non-root user and set permissions
RUN useradd -m -u 1000 celeryuser

# Set work directory
WORKDIR /app

# Copy and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Set ownership of the app directory
RUN chown -R celeryuser:celeryuser /app

# Switch to the non-root user
USER celeryuser

# Command to run the application
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "gas_utility.wsgi:application"]