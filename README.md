# jenkins-python-agent-image

# Here's a Dockerfile that can be used to build a Jenkins Python agent image:

This Dockerfile starts with the **jenkins/agent:latest image**, which is the official Jenkins agent base image. It then updates the package list, installs python3 and python3-pip, and removes the package cache to keep the image size small.

It sets the environment variable **PYTHONUNBUFFERED=1**, which ensures that Python output is not buffered, which is important for Jenkins builds.

The **Dockerfile** also adds a new user jenkins to the image and switches to that user, as Jenkins typically runs builds as a non-root user for security reasons.

Finally, it sets the working directory in the container to **/app**, which is where the Jenkins build artifacts and the Python application can be located.
