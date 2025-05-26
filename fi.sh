#!/bin/bash

# Update system
sudo apt update && sudo apt upgrade -y

# Install essential tools
sudo apt install -y build-essential git curl wget unzip vim net-tools htop ca-certificates gnupg lsb-release software-properties-common apt-transport-https

# Install Docker
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | \
      sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
      sudo apt update
      sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
      sudo usermod -aG docker $USER

      # Install Nginx
      sudo apt install -y nginx

      # Install MySQL (change to postgresql if needed)
      sudo apt install -y mysql-server

      # Install Node.js and npm (version 20)
      curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
      sudo apt install -y nodejs

      # Install Python and pip
      sudo apt install -y python3 python3-pip

      # Install Java (OpenJDK 17)
      sudo apt install -y openjdk-17-jdk

      # Done
      echo "Setup complete! Please reboot or logout-login to apply docker group permissions."