#!/bin/bash

#!/bin/bash

# Update the package list
sudo apt update

# Install OpenJDK 17
sudo apt install -y openjdk-17-jre

# Check Java version
java -version

# Add Jenkins repository key
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update the package list again with the Jenkins repository
sudo apt-get update

# Install Jenkins
sudo apt-get install -y jenkins

# Start Jenkins service
sudo systemctl start jenkins.service

# Check the status of Jenkins service
sudo systemctl status jenkins

# Display the initial admin password for Jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
