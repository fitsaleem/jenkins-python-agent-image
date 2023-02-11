# Use an official Jenkins agent base image
FROM jenkins/agent:latest

# Install the required packages for a Python agent
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    rm -rf /var/lib/apt/lists/*

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Add the user jenkins to the image and switch to it
RUN useradd -m jenkins
USER jenkins

# Set the working directory in the container
WORKDIR /app
