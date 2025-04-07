#!/bin/sh

##
# This script sets up a cat cafe environment with a specific directory structure and files.
##

# Check if the script is run as root
if [ "$(id -u)" -ne 0 ]; then
  echo "This script must be run as root. Please use sudo."
  exit 1
fi

# Check if docker, docker compose, git, node, and npm are installed
echo "Checking for required tools..."

echo "Checking for Docker..."
if ! [ -x "$(command -v docker)" ]; then
  # Add Docker's official GPG key:
  sudo apt-get update
  sudo apt-get install ca-certificates curl
  sudo install -m 0755 -d /etc/apt/keyrings
  sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
  sudo chmod a+r /etc/apt/keyrings/docker.asc

  # Add the repository to Apt sources:
  echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
    $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" |
    sudo tee /etc/apt/sources.list.d/docker.list >/dev/null
  sudo apt-get update
  sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
fi

echo "Checking for Docker Compose..."
if ! [ -x "$(command -v docker compose)" ]; then
  echo "Docker Compose could not be found. Docker failed to install. Please check the Docker installation."
  exit
fi

echo "Checking for Git..."
if ! [ -x "$(command -v git)" ]; then
  # Install Git
  sudo apt-get update
  sudo apt-get install git
fi

echo "Checking for Node.js..."
if ! [ -x "$(command -v node)" ]; then
  sudo apt-get install -y curl
  curl -fsSL https://deb.nodesource.com/setup_23.x -o nodesource_setup.sh
  sudo -E bash nodesource_setup.sh
  sudo apt-get install -y nodejs
fi

echo "Checking for npm..."
if ! [ -x "$(command -v npm)" ]; then
  echo "npm could not be found. Node.js failed to install. Please check the Node.js installation."
  exit
fi

#
# Git clone the cat cafe repositories
#

# Clone the backend repository
echo "Cloning the backend repository..."
if [ -d "cat-cafe-backend" ]; then
  echo "cat-cafe-backend directory already exists. Pulling latest changes..."
  cd cat-cafe-backend
  git pull origin main
  cd ..
else
  git clone https://github.com/energypatrikhu/cat-cafe-backend.git cat-cafe-backend
fi

# Clone the frontend repository
echo "Cloning the frontend repository..."
if [ -d "cat-cafe-frontend" ]; then
  echo "cat-cafe-frontend directory already exists. Pulling latest changes..."
  cd cat-cafe-frontend
  git pull origin main
  cd ..
else
  git clone https://github.com/Sy-Anna/CatCafeFrontend cat-cafe-frontend
fi

# Run docker compose
echo "Running Docker Compose..."
docker compose up -d --build
