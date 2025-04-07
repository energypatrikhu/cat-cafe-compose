# Cat Cafe Project

The Cat Cafe project is a full-stack application for the webshop **Cat Cafe Webshop**. It consists of three main components:
- **Database**: A MariaDB instance to store data.
- **Backend**: A Node.js-based API server.
- **Frontend**: A user interface built with modern web technologies.

## Prerequisites

Ensure the following tools are installed on your system:
> **Note**: The setup script requires `sudo` privileges to install dependencies and run Docker commands.
> For most of the tools, the script will automatically install them if they are not already present.
- Docker
- Docker Compose
- Git
- Node.js and npm

## Setup Instructions

1. Clone this repository and navigate to the project directory:
   ```bash
   git clone https://github.com/energypatrikhu/cat-cafe-compose cat-cafe
   cd cat-cafe
   ```

2. Run the setup script to install dependencies, clone submodules, and start the application:
   ```bash
   sudo ./setup-cat-cafe.sh
   ```

3. Seed the database with initial data:
   ```bash
   ./seed-cat-cafe.sh
   ```

4. Access the application:
   - Frontend: [http://localhost:5542](http://localhost:5542)
   - Backend API: [http://localhost:5543](http://localhost:5543)

## Project Structure

- **docker-compose.yaml**: Defines the services for the application.
- **setup-cat-cafe.sh**: Automates the setup process.
- **seed-cat-cafe.sh**: Seeds the database with initial data.
- **cat-cafe-backend**: Backend service repository.
- **cat-cafe-frontend**: Frontend service repository.
