# Wild Warden Server

Rescue service API for the Wild Warden application.

## Setup

1. Clone the repository
2. Install dependencies: `npm install`
3. Create `.env` file based on this template:
```
PORT=3001

# MongoDB Configuration
MONGO_USERNAME=admin
MONGO_PASSWORD=admin
MONGO_CLUSTER=localhost:27017
MONGO_DB_NAME=sensorDataDB
```
4. Start the server:
   - Production: `npm start`
   - Development (with auto-reload): `npm run dev`

## API Endpoints

### Cases
- `GET /api/cases` - Get all cases
- `GET /api/cases/pending` - Get pending cases
- `GET /api/cases/processed` - Get processed cases
- `GET /api/cases/device/:deviceId` - Get cases for a specific device
- `POST /api/cases` - Create a new case
- `POST /api/cases/:id/accept` - Accept a case
- `POST /api/cases/:id/reject` - Reject a case
- `DELETE /api/cases/:id` - Delete a case

### Buzzer Status
- `GET /api/buzzer-status` - Get buzzer status based on pending cases