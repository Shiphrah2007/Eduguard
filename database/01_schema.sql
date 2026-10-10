-- PostgreSQL schema for EduGuard

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    enrollment_date DATE NOT NULL,
    status VARCHAR(50) DEFAULT 'ACTIVE'
);

CREATE TABLE risk_profiles (
    id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students(id),
    risk_level VARCHAR(50) NOT NULL,
    last_assessed TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);
