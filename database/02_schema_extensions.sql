-- Schema extensions for EduGuard Phase 3A

ALTER TABLE students ADD COLUMN student_code VARCHAR(20) UNIQUE;
ALTER TABLE students ADD COLUMN department VARCHAR(100);
ALTER TABLE students ADD COLUMN current_semester INTEGER;
ALTER TABLE students ADD COLUMN section VARCHAR(10);

CREATE TABLE faculty (
    id SERIAL PRIMARY KEY,
    faculty_code VARCHAR(20) UNIQUE NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    department VARCHAR(100)
);

CREATE TABLE student_faculty_assignments (
    student_id INTEGER REFERENCES students(id),
    faculty_id INTEGER REFERENCES faculty(id),
    assignment_role VARCHAR(50) DEFAULT 'ADVISOR',
    PRIMARY KEY (student_id, faculty_id)
);

CREATE TABLE attendance (
    id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students(id),
    course_code VARCHAR(50) NOT NULL,
    classes_conducted INTEGER NOT NULL,
    classes_attended INTEGER NOT NULL,
    semester INTEGER NOT NULL
);

CREATE TABLE assessments (
    id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students(id),
    course_code VARCHAR(50) NOT NULL,
    subject VARCHAR(100) NOT NULL,
    score NUMERIC(5,2) NOT NULL,
    max_score NUMERIC(5,2) NOT NULL,
    semester INTEGER NOT NULL
);

CREATE TABLE semester_history (
    id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students(id),
    semester INTEGER NOT NULL,
    gpa NUMERIC(3,2) NOT NULL,
    credits_earned INTEGER NOT NULL,
    UNIQUE (student_id, semester)
);

CREATE TABLE financial_records (
    id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students(id),
    balance NUMERIC(10,2) DEFAULT 0.00,
    last_payment_date DATE,
    status VARCHAR(50) DEFAULT 'CLEARED'
);
