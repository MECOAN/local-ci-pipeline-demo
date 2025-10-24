# Local CI/CD Pipeline Simulation - dockerized version

# Use Python base image
FROM python:3.13-slim

# Set working directory
WORKDIR /app

# Copy proyect files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir --upgrade pip && \
    pip install -r requirements.txt && \
    pip install pytest-html pytest-metadata

# Grant execution permission to scripts
RUN chmod +x scripts/*.sh

# Define the default command
CMD ["bash", "scripts/pipeline.sh"]