# WILDWARDEN

![WILDWARDEN](https://img.shields.io/badge/WILDWARDEN-IoT%20Rescue%20System-blue)

## Overview

WILDWARDEN is an advanced IoT-based search and rescue system designed to help locate and assist lost or injured hikers in remote areas. Using LoRa technology for long-range communication, the system can detect distress signals even in areas with no cellular coverage.

Currently deployed across India's most popular national parks including Jim Corbett National Park, Rajaji National Park, and the hiking trails of Uttarakhand, WILDWARDEN has helped rescue dozens of hikers in emergency situations.

### [Live Demo](https://aman-sigroha.github.io/WILDWARDEN/) | [Server API](https://wildwarden.onrender.com)

## Tech Stack

### Mobile Application (APP)
- **Android** application built with **Kotlin**
- **Bluetooth** connectivity to wearable devices
- Real-time vital signs monitoring
- **GPS** location tracking
- Uses **Jetpack Compose** for modern UI

### Web Dashboard (WEB)
- **React** frontend with **Vite** build system
- **Leaflet** for interactive maps
- **Styled Components** for styling
- **Axios** for API communication
- Deployed on **GitHub Pages**

### Server Backend (SERVER)
- **Node.js** with **Express** framework
- **MongoDB** for data storage
- RESTful API architecture
- Deployed on **Render**

### Hardware Integration
- **Arduino** based alert system
- **Python** script for buzzer controller
- **Serial** communication protocol
- LoRa technology for long-range communication

## Features

- **Real-time Vital Sign Monitoring**: Heart rate, temperature, SpO2 tracking via wearable devices
- **GPS Location Tracking**: Precise location data with interactive map visualization
- **Emergency Detection**: Automatic identification of potential emergency situations
- **Alert System**: Immediate notifications to rescue teams with physical buzzer alerts
- **Case Management**: System for accepting/rejecting rescue operations
- **History Tracking**: Records of past incidents and responses

## Project Structure

The repository is organized into three main components:

- **APP**: Android mobile application for hikers and field rescuers
- **WEB**: React-based dashboard for monitoring and response coordination
- **SERVER**: Node.js backend API for data processing and storage

## Setup Instructions

### Server Setup

1. Navigate to the SERVER directory
   ```
   cd SERVER
   ```

2. Install dependencies
   ```
   npm install
   ```

3. Create a `.env` file with the following environment variables:
   ```
   PORT=3001
   MONGO_USERNAME=your_username
   MONGO_PASSWORD=your_password
   MONGO_CLUSTER=your_cluster_url
   MONGO_DB_NAME=your_db_name
   ```

4. Start the server
   ```
   npm start
   ```

### Web Dashboard Setup

1. Navigate to the WEB directory
   ```
   cd WEB
   ```

2. Install dependencies
   ```
   npm install
   ```

3. Start the development server
   ```
   npm run dev
   ```

4. Build for production
   ```
   npm run build
   ```

5. Deploy to GitHub Pages
   ```
   npm run deploy
   ```

### Mobile App Setup

1. Open the APP directory in Android Studio
2. Sync Gradle files
3. Build and run on a device or emulator

### Arduino Alert System Setup

1. See the detailed instructions in `WEB/ARDUINO_SETUP.md`
2. Upload the sketch in `WEB/arduino_buzzer_controller/` to your Arduino
3. Run the Python script:
   ```
   python WEB/arduino_buzzer_alert.py
   ```

## Coverage

WILDWARDEN's network currently covers:
- Jim Corbett National Park
- Rajaji National Park
- Nainital and surrounding trails
- Kalagarh Tiger Reserve
- Sitabani Wildlife Reserve

## License

MIT © WILDWARDEN