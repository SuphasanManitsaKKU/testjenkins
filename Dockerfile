FROM jenkins/jenkins:lts

# Switch to root to install Python and Robot Framework
USER root

# Install Python and pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip3 install --no-cache-dir --break-system-packages robotframework

# Switch back to the Jenkins user
USER jenkins