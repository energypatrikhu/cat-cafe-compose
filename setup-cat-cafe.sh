#!/bin/sh

##
# This script sets up a cat cafe environment with a specific directory structure and files.
##

# Check if docker, docker compose, git, node, and npm are installed
if
  ! command -v docker &
  >/dev/null
then
  echo "Docker could not be found. Please install Docker."
  exit
fi

if
  ! command -v docker-compose &
  >/dev/null
then
  echo "Docker Compose could not be found. Please install Docker Compose."
  exit
fi

if
  ! command -v git &
  >/dev/null
then
  echo "Git could not be found. Please install Git."
  exit
fi

if
  ! command -v node &
  >/dev/null
then
  echo "Node.js could not be found. Please install Node.js."
  exit
fi

if
  ! command -v npm &
  >/dev/null
then
  echo "npm could not be found. Please install npm."
  exit
fi

#
# Git clone the cat cafe repositories
#

# Clone the backend repository
git clone https://github.com/energypatrikhu/cat-cafe-backend.git cat-cafe-backend

# Clone the frontend repository
git clone https://github.com/Sy-Anna/CatCafeFrontend cat-cafe-frontend
