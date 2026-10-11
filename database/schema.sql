-- Complete PostgreSQL Schema for EduGuard

CREATE TABLE IF NOT EXISTS students (
    id SERIAL PRIMARY KEY,
    student_code VARCHAR(20) UNIQUE,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    enrollment_date DATE NOT NULL,
    status VARCHAR(50) DEFAULT 'ACTIVE',
    department VARCHAR(100),
    current_semester INTEGER,
    section VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS risk_profiles (
    id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students(id),
    risk_level VARCHAR(50) NOT NULL,
    risk_score INTEGER,
    risk_factors TEXT,
    support_actions TEXT,
    last_assessed TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);

CREATE TABLE IF NOT EXISTS faculty (
    id SERIAL PRIMARY KEY,
    faculty_code VARCHAR(20) UNIQUE NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    department VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS student_faculty_assignments (
    student_id INTEGER REFERENCES students(id),
    faculty_id INTEGER REFERENCES faculty(id),
    assignment_role VARCHAR(50) DEFAULT 'ADVISOR',
    PRIMARY KEY (student_id, faculty_id)
);

CREATE TABLE IF NOT EXISTS attendance (
    id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students(id),
    course_code VARCHAR(50) NOT NULL,
    classes_conducted INTEGER NOT NULL,
    classes_attended INTEGER NOT NULL,
    semester INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS assessments (
    id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students(id),
    course_code VARCHAR(50) NOT NULL,
    subject VARCHAR(100) NOT NULL,
    score NUMERIC(5,2) NOT NULL,
    max_score NUMERIC(5,2) NOT NULL,
    semester INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS semester_history (
    id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students(id),
    semester INTEGER NOT NULL,
    gpa NUMERIC(3,2) NOT NULL,
    credits_earned INTEGER NOT NULL,
    UNIQUE (student_id, semester)
);

CREATE TABLE IF NOT EXISTS financial_records (
    id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students(id),
    balance NUMERIC(10,2) DEFAULT 0.00,
    last_payment_date DATE,
    status VARCHAR(50) DEFAULT 'CLEARED'
);

CREATE TABLE IF NOT EXISTS interventions (
    id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students(id),
    faculty_id INTEGER REFERENCES faculty(id),
    status VARCHAR(50) DEFAULT 'Pending',
    type VARCHAR(100),
    date_initiated DATE,
    follow_up_date DATE,
    notes TEXT
);
