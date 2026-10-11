# EduGuard Architecture & Service Boundaries

## Microservices

### 1. Student Data Service
**Port:** 8081
**Responsibilities:**
* Manage student profiles, demographics, and enrollment details.
* Track attendance history across courses.
* Record assessment, semester marks, and assignment averages.
* Maintain backlog counts.
* Manage fee-delay and financial-support information.
* Expose APIs for student search, filtering, and history retrieval.

### 2. Risk & Intervention Service
**Port:** 8082
**Responsibilities:**
* Handle risk prediction integration (Low, Medium, High).
* Provide contributing-factor explanations based on ML output.
* Generate and manage intervention recommendations.
* Manage counselling case creation, updates, and status tracking.
* Communicate with Student Data Service to fetch context needed for predictions.

## Frontend
**Port:** 5173
* Provides a clean, professional, conventional administration portal.
* Retrieves data via REST APIs from both backend services.
* Visualizes data using Recharts (risk percentages, trends).
* Maintains a "college-first" focus, with "School" options planned as future modules.

## Database
* Centralized or logically separated PostgreSQL database.
* Stores persistent data for students, attendance, risk assessments, and interventions.

## Security
* Stateless authentication via JWT.
* Spring Security interceptors in both microservices.
