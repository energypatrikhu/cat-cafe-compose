# Cat Cafe Project

The Cat Cafe project is a full-stack application for the webshop **Cat Cafe Webshop**. It consists of three main components:
- **Database**: A MariaDB instance to store data.
- [Backend](https://github.com/energypatrikhu/cat-cafe-backend.git): A Node.js-based API server.
- [Frontend](https://github.com/Sy-Anna/CatCafeFrontend): A user interface built with modern web technologies.

## Credentials

The credentials can be found [here](https://github.com/energypatrikhu/cat-cafe-compose/blob/main/CREDENTIALS.md).

## Prerequisites

Ensure the following tools are installed on your system:
> **Note**: The setup script requires `sudo` privileges to install dependencies and run Docker commands.<br>
> For most of the tools, the script will automatically install them if they are not already present.
- Docker
- Docker Compose
- Git
- Node.JS
- npm

## Setup Instructions

1. Clone this repository and navigate to the project directory:
    ```bash
    git clone https://github.com/energypatrikhu/cat-cafe-compose cat-cafe
    cd cat-cafe
    ```

2. Run the setup script to install dependencies, clone submodules, and start the application:
    1. Install Debian-specific dependencies:
        ```bash
        sudo chmod +x ./setup-cat-cafe-debian.sh
        sudo ./setup-cat-cafe-debian.sh
        ```

    2. Install Ubuntu-specific dependencies:
        ```bash
        sudo chmod +x ./setup-cat-cafe-ubuntu.sh
        sudo ./setup-cat-cafe-ubuntu.sh
        ```

3. Seed the database with initial data:
    ```bash
    sudo chmod +x ./seed-cat-cafe.sh
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

---

# Cat Cafe Projekt

A Cat Cafe projekt egy teljes stack alkalmazás a **Cat Cafe Webshop** számára. Három fő komponensből áll:
- **Adatbázis**: Egy MariaDB példány az adatok tárolására.
- [Backend](https://github.com/energypatrikhu/cat-cafe-backend): Egy Node.js alapú API szerver.
- [Frontend](https://github.com/Sy-Anna/CatCafeFrontend): Egy modern webtechnológiákkal épített felhasználói felület.

## Hitelesítő adatok

A hitelesítő adatokért [kattints ide](https://github.com/energypatrikhu/cat-cafe-compose/blob/main/CREDENTIALS.md).

## Előfeltételek

Győződj meg róla, hogy a következő eszközök telepítve vannak a rendszereden:
> **Megjegyzés**: A telepítési szkript `sudo` jogosultságokat igényel a függőségek telepítéséhez és a Docker parancsok futtatásához.<br>
> A legtöbb eszköz esetében a szkript automatikusan telepíti azokat, ha még nincsenek jelen.
- Docker
- Docker Compose
- Git
- Node.JS
- npm

## Telepítési útmutató

1. Klónozd le ezt a repót, és navigálj a projekt könyvtárába:
    ```bash
    git clone https://github.com/energypatrikhu/cat-cafe-compose cat-cafe
    cd cat-cafe
    ```

2. Futtasd a telepítési szkriptet a függőségek telepítéséhez, az almodulok klónozásához és az alkalmazás elindításához:
    1. Telepítsd a Debian specifikus függőségeket:
        ```bash
        sudo chmod +x ./setup-cat-cafe-debian.sh
        sudo ./setup-cat-cafe-debian.sh
        ```

    2. Telepítsd a Ubuntu specifikus függőségeket:
        ```bash
        sudo chmod +x ./setup-cat-cafe-ubuntu.sh
        sudo ./setup-cat-cafe-ubuntu.sh
        ```

3. Töltsd fel az adatbázist kezdeti adatokkal:
    ```bash
    sudo chmod +x ./seed-cat-cafe.sh
    ./seed-cat-cafe.sh
    ```

4. Érd el az alkalmazást:
  - Frontend: [http://localhost:5542](http://localhost:5542)
  - Backend API: [http://localhost:5543](http://localhost:5543)

## Projektstruktúra

- **docker-compose.yaml**: Az alkalmazás szolgáltatásait definiálja.
- **setup-cat-cafe.sh**: Automatizálja a telepítési folyamatot.
- **seed-cat-cafe.sh**: Feltölti az adatbázist kezdeti adatokkal.
- **cat-cafe-backend**: A backend szolgáltatás repója.
- **cat-cafe-frontend**: A frontend szolgáltatás repója.
