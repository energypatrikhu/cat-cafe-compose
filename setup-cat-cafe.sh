#!/bin/sh

# This script sets up a cat cafe environment with a specific directory structure and files.

# Create the main directory for the cat cafe
mkdir -p ~/cat-cafe
cd ~/cat-cafe

#
# Git clone the cat cafe repositories
#

# Clone the backend repository
git clone https://github.com/energypatrikhu/cat-cafe-backend.git cat-cafe-backend

# Clone the frontend repository
git clone https://github.com/Sy-Anna/CatCafeFrontend cat-cafe-frontend
