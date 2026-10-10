-- Seed data for EduGuard Phase 3A

-- Faculty
INSERT INTO faculty (faculty_code, first_name, last_name, email, department) VALUES
('F-01', 'Alan', 'Turing', 'alan.turing@college.edu', 'Computer Science'),
('F-02', 'Marie', 'Curie', 'marie.curie@college.edu', 'Physics');

-- Students (S-101 to S-120)
DO $$
DECLARE
    i INTEGER;
    v_student_id INTEGER;
    v_sem INTEGER;
BEGIN
    FOR i IN 101..120 LOOP
        INSERT INTO students (first_name, last_name, email, enrollment_date, status, student_code, department, current_semester, section)
        VALUES (
            'Student' || i, 
            'Test', 
            'student' || i || '@college.edu', 
            '2024-09-01', 
            'ACTIVE', 
            'S-' || i, 
            CASE WHEN i % 2 = 0 THEN 'Computer Science' ELSE 'Physics' END,
            4, 
            'A'
        ) RETURNING id INTO v_student_id;

        -- Faculty assignment
        INSERT INTO student_faculty_assignments (student_id, faculty_id) 
        VALUES (v_student_id, CASE WHEN i % 2 = 0 THEN 1 ELSE 2 END);

        -- Attendance
        INSERT INTO attendance (student_id, course_code, classes_conducted, classes_attended, semester)
        VALUES (v_student_id, 'CS101', 40, 40 - (i % 10), 4);
        
        -- Assessments
        INSERT INTO assessments (student_id, course_code, subject, score, max_score, semester)
        VALUES (v_student_id, 'CS101', 'Midterm', 80 + (i % 20), 100, 4);

        -- Semester history
        FOR v_sem IN 1..3 LOOP
            INSERT INTO semester_history (student_id, semester, gpa, credits_earned)
            VALUES (v_student_id, v_sem, 3.0 + (i % 10)*0.1, 15);
        END LOOP;

        -- Financial
        INSERT INTO financial_records (student_id, balance, status)
        VALUES (v_student_id, 0.00, 'CLEARED');
    END LOOP;
END $$;
