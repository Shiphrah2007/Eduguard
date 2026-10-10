# EduGuard

EduGuard is a comprehensive College ERP system, featuring:
- A modern frontend built with React + Vite
- A `student-data-service` built with Java Spring Boot
- A `risk-intervention-service` built with Java Spring Boot
- A PostgreSQL database for data persistence

## Project Structure

- `frontend/`: React + Vite application
- `backend/student-data-service/`: Manages core student information
- `backend/risk-intervention-service/`: Monitors and intervenes in student risk situations
- `database/`: Contains PostgreSQL schemas and seed data scripts

## Setup and Run Instructions

### Frontend
1. Navigate to the frontend directory: `cd frontend`
2. Install dependencies: `npm install`
3. Run the development server: `npm run dev`

### Backend
1. Ensure Java 17+ and Maven are installed.
2. Navigate to either `backend/student-data-service` or `backend/risk-intervention-service`.
3. Run the application (e.g., `./mvnw spring-boot:run` or via your IDE).

### Database
1. Ensure PostgreSQL is installed and running.
2. Execute the schema/seed scripts located in `database/` against your PostgreSQL instance.
