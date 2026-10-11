-- EduGuard Simulated Seed Data
-- This script uses explicit IDs and ON CONFLICT DO UPDATE for idempotency.
SET search_path TO eduguard, public;


INSERT INTO faculty (faculty_id, name, email, is_active)
VALUES (1, 'Dr. Admin Faculty', 'admin@eduguard.edu', TRUE)
ON CONFLICT (faculty_id) DO UPDATE SET name = EXCLUDED.name, email = EXCLUDED.email;

-- Seed 20 Students (IDs 1-20)

INSERT INTO students (student_id, reg_no, name, department, section, current_semester, enrollment_year, is_active)
VALUES (1, 'S-1001', 'Student 1', 'Mechanical', 'B', 4, 2024, TRUE)
ON CONFLICT (student_id) DO UPDATE SET 
    reg_no = EXCLUDED.reg_no, name = EXCLUDED.name, department = EXCLUDED.department, 
    section = EXCLUDED.section, current_semester = EXCLUDED.current_semester;
    

INSERT INTO students (student_id, reg_no, name, department, section, current_semester, enrollment_year, is_active)
VALUES (2, 'S-1002', 'Student 2', 'Electrical', 'A', 4, 2024, TRUE)
ON CONFLICT (student_id) DO UPDATE SET 
    reg_no = EXCLUDED.reg_no, name = EXCLUDED.name, department = EXCLUDED.department, 
    section = EXCLUDED.section, current_semester = EXCLUDED.current_semester;
    

INSERT INTO students (student_id, reg_no, name, department, section, current_semester, enrollment_year, is_active)
VALUES (3, 'S-1003', 'Student 3', 'Civil', 'B', 4, 2024, TRUE)
ON CONFLICT (student_id) DO UPDATE SET 
    reg_no = EXCLUDED.reg_no, name = EXCLUDED.name, department = EXCLUDED.department, 
    section = EXCLUDED.section, current_semester = EXCLUDED.current_semester;
    

INSERT INTO students (student_id, reg_no, name, department, section, current_semester, enrollment_year, is_active)
VALUES (4, 'S-1004', 'Student 4', 'Computer Science', 'A', 4, 2024, TRUE)
ON CONFLICT (student_id) DO UPDATE SET 
    reg_no = EXCLUDED.reg_no, name = EXCLUDED.name, department = EXCLUDED.department, 
    section = EXCLUDED.section, current_semester = EXCLUDED.current_semester;
    

INSERT INTO students (student_id, reg_no, name, department, section, current_semester, enrollment_year, is_active)
VALUES (5, 'S-1005', 'Student 5', 'Mechanical', 'B', 4, 2024, TRUE)
ON CONFLICT (student_id) DO UPDATE SET 
    reg_no = EXCLUDED.reg_no, name = EXCLUDED.name, department = EXCLUDED.department, 
    section = EXCLUDED.section, current_semester = EXCLUDED.current_semester;
    

INSERT INTO students (student_id, reg_no, name, department, section, current_semester, enrollment_year, is_active)
VALUES (6, 'S-1006', 'Student 6', 'Electrical', 'A', 4, 2024, TRUE)
ON CONFLICT (student_id) DO UPDATE SET 
    reg_no = EXCLUDED.reg_no, name = EXCLUDED.name, department = EXCLUDED.department, 
    section = EXCLUDED.section, current_semester = EXCLUDED.current_semester;
    

INSERT INTO students (student_id, reg_no, name, department, section, current_semester, enrollment_year, is_active)
VALUES (7, 'S-1007', 'Student 7', 'Civil', 'B', 4, 2024, TRUE)
ON CONFLICT (student_id) DO UPDATE SET 
    reg_no = EXCLUDED.reg_no, name = EXCLUDED.name, department = EXCLUDED.department, 
    section = EXCLUDED.section, current_semester = EXCLUDED.current_semester;
    

INSERT INTO students (student_id, reg_no, name, department, section, current_semester, enrollment_year, is_active)
VALUES (8, 'S-1008', 'Student 8', 'Computer Science', 'A', 4, 2024, TRUE)
ON CONFLICT (student_id) DO UPDATE SET 
    reg_no = EXCLUDED.reg_no, name = EXCLUDED.name, department = EXCLUDED.department, 
    section = EXCLUDED.section, current_semester = EXCLUDED.current_semester;
    

INSERT INTO students (student_id, reg_no, name, department, section, current_semester, enrollment_year, is_active)
VALUES (9, 'S-1009', 'Student 9', 'Mechanical', 'B', 4, 2024, TRUE)
ON CONFLICT (student_id) DO UPDATE SET 
    reg_no = EXCLUDED.reg_no, name = EXCLUDED.name, department = EXCLUDED.department, 
    section = EXCLUDED.section, current_semester = EXCLUDED.current_semester;
    

INSERT INTO students (student_id, reg_no, name, department, section, current_semester, enrollment_year, is_active)
VALUES (10, 'S-1010', 'Student 10', 'Electrical', 'A', 4, 2024, TRUE)
ON CONFLICT (student_id) DO UPDATE SET 
    reg_no = EXCLUDED.reg_no, name = EXCLUDED.name, department = EXCLUDED.department, 
    section = EXCLUDED.section, current_semester = EXCLUDED.current_semester;
    

INSERT INTO students (student_id, reg_no, name, department, section, current_semester, enrollment_year, is_active)
VALUES (11, 'S-1011', 'Student 11', 'Civil', 'B', 4, 2024, TRUE)
ON CONFLICT (student_id) DO UPDATE SET 
    reg_no = EXCLUDED.reg_no, name = EXCLUDED.name, department = EXCLUDED.department, 
    section = EXCLUDED.section, current_semester = EXCLUDED.current_semester;
    

INSERT INTO students (student_id, reg_no, name, department, section, current_semester, enrollment_year, is_active)
VALUES (12, 'S-1012', 'Student 12', 'Computer Science', 'A', 4, 2024, TRUE)
ON CONFLICT (student_id) DO UPDATE SET 
    reg_no = EXCLUDED.reg_no, name = EXCLUDED.name, department = EXCLUDED.department, 
    section = EXCLUDED.section, current_semester = EXCLUDED.current_semester;
    

INSERT INTO students (student_id, reg_no, name, department, section, current_semester, enrollment_year, is_active)
VALUES (13, 'S-1013', 'Student 13', 'Mechanical', 'B', 4, 2024, TRUE)
ON CONFLICT (student_id) DO UPDATE SET 
    reg_no = EXCLUDED.reg_no, name = EXCLUDED.name, department = EXCLUDED.department, 
    section = EXCLUDED.section, current_semester = EXCLUDED.current_semester;
    

INSERT INTO students (student_id, reg_no, name, department, section, current_semester, enrollment_year, is_active)
VALUES (14, 'S-1014', 'Student 14', 'Electrical', 'A', 4, 2024, TRUE)
ON CONFLICT (student_id) DO UPDATE SET 
    reg_no = EXCLUDED.reg_no, name = EXCLUDED.name, department = EXCLUDED.department, 
    section = EXCLUDED.section, current_semester = EXCLUDED.current_semester;
    

INSERT INTO students (student_id, reg_no, name, department, section, current_semester, enrollment_year, is_active)
VALUES (15, 'S-1015', 'Student 15', 'Civil', 'B', 4, 2024, TRUE)
ON CONFLICT (student_id) DO UPDATE SET 
    reg_no = EXCLUDED.reg_no, name = EXCLUDED.name, department = EXCLUDED.department, 
    section = EXCLUDED.section, current_semester = EXCLUDED.current_semester;
    

INSERT INTO students (student_id, reg_no, name, department, section, current_semester, enrollment_year, is_active)
VALUES (16, 'S-1016', 'Student 16', 'Computer Science', 'A', 4, 2024, TRUE)
ON CONFLICT (student_id) DO UPDATE SET 
    reg_no = EXCLUDED.reg_no, name = EXCLUDED.name, department = EXCLUDED.department, 
    section = EXCLUDED.section, current_semester = EXCLUDED.current_semester;
    

INSERT INTO students (student_id, reg_no, name, department, section, current_semester, enrollment_year, is_active)
VALUES (17, 'S-1017', 'Student 17', 'Mechanical', 'B', 4, 2024, TRUE)
ON CONFLICT (student_id) DO UPDATE SET 
    reg_no = EXCLUDED.reg_no, name = EXCLUDED.name, department = EXCLUDED.department, 
    section = EXCLUDED.section, current_semester = EXCLUDED.current_semester;
    

INSERT INTO students (student_id, reg_no, name, department, section, current_semester, enrollment_year, is_active)
VALUES (18, 'S-1018', 'Student 18', 'Electrical', 'A', 4, 2024, TRUE)
ON CONFLICT (student_id) DO UPDATE SET 
    reg_no = EXCLUDED.reg_no, name = EXCLUDED.name, department = EXCLUDED.department, 
    section = EXCLUDED.section, current_semester = EXCLUDED.current_semester;
    

INSERT INTO students (student_id, reg_no, name, department, section, current_semester, enrollment_year, is_active)
VALUES (19, 'S-1019', 'Student 19', 'Civil', 'B', 4, 2024, TRUE)
ON CONFLICT (student_id) DO UPDATE SET 
    reg_no = EXCLUDED.reg_no, name = EXCLUDED.name, department = EXCLUDED.department, 
    section = EXCLUDED.section, current_semester = EXCLUDED.current_semester;
    

INSERT INTO students (student_id, reg_no, name, department, section, current_semester, enrollment_year, is_active)
VALUES (20, 'S-1020', 'Student 20', 'Computer Science', 'A', 4, 2024, TRUE)
ON CONFLICT (student_id) DO UPDATE SET 
    reg_no = EXCLUDED.reg_no, name = EXCLUDED.name, department = EXCLUDED.department, 
    section = EXCLUDED.section, current_semester = EXCLUDED.current_semester;
    
-- Assign all 20 students to Faculty 1

INSERT INTO faculty_student_assignments (faculty_id, student_id)
VALUES (1, 1)
ON CONFLICT (faculty_id, student_id) DO NOTHING;
    

INSERT INTO faculty_student_assignments (faculty_id, student_id)
VALUES (1, 2)
ON CONFLICT (faculty_id, student_id) DO NOTHING;
    

INSERT INTO faculty_student_assignments (faculty_id, student_id)
VALUES (1, 3)
ON CONFLICT (faculty_id, student_id) DO NOTHING;
    

INSERT INTO faculty_student_assignments (faculty_id, student_id)
VALUES (1, 4)
ON CONFLICT (faculty_id, student_id) DO NOTHING;
    

INSERT INTO faculty_student_assignments (faculty_id, student_id)
VALUES (1, 5)
ON CONFLICT (faculty_id, student_id) DO NOTHING;
    

INSERT INTO faculty_student_assignments (faculty_id, student_id)
VALUES (1, 6)
ON CONFLICT (faculty_id, student_id) DO NOTHING;
    

INSERT INTO faculty_student_assignments (faculty_id, student_id)
VALUES (1, 7)
ON CONFLICT (faculty_id, student_id) DO NOTHING;
    

INSERT INTO faculty_student_assignments (faculty_id, student_id)
VALUES (1, 8)
ON CONFLICT (faculty_id, student_id) DO NOTHING;
    

INSERT INTO faculty_student_assignments (faculty_id, student_id)
VALUES (1, 9)
ON CONFLICT (faculty_id, student_id) DO NOTHING;
    

INSERT INTO faculty_student_assignments (faculty_id, student_id)
VALUES (1, 10)
ON CONFLICT (faculty_id, student_id) DO NOTHING;
    

INSERT INTO faculty_student_assignments (faculty_id, student_id)
VALUES (1, 11)
ON CONFLICT (faculty_id, student_id) DO NOTHING;
    

INSERT INTO faculty_student_assignments (faculty_id, student_id)
VALUES (1, 12)
ON CONFLICT (faculty_id, student_id) DO NOTHING;
    

INSERT INTO faculty_student_assignments (faculty_id, student_id)
VALUES (1, 13)
ON CONFLICT (faculty_id, student_id) DO NOTHING;
    

INSERT INTO faculty_student_assignments (faculty_id, student_id)
VALUES (1, 14)
ON CONFLICT (faculty_id, student_id) DO NOTHING;
    

INSERT INTO faculty_student_assignments (faculty_id, student_id)
VALUES (1, 15)
ON CONFLICT (faculty_id, student_id) DO NOTHING;
    

INSERT INTO faculty_student_assignments (faculty_id, student_id)
VALUES (1, 16)
ON CONFLICT (faculty_id, student_id) DO NOTHING;
    

INSERT INTO faculty_student_assignments (faculty_id, student_id)
VALUES (1, 17)
ON CONFLICT (faculty_id, student_id) DO NOTHING;
    

INSERT INTO faculty_student_assignments (faculty_id, student_id)
VALUES (1, 18)
ON CONFLICT (faculty_id, student_id) DO NOTHING;
    

INSERT INTO faculty_student_assignments (faculty_id, student_id)
VALUES (1, 19)
ON CONFLICT (faculty_id, student_id) DO NOTHING;
    

INSERT INTO faculty_student_assignments (faculty_id, student_id)
VALUES (1, 20)
ON CONFLICT (faculty_id, student_id) DO NOTHING;
    
-- 12 weeks of attendance for each student

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (1, CURRENT_DATE - INTERVAL '93 days', 1, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (1, CURRENT_DATE - INTERVAL '86 days', 2, 20, 17)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (1, CURRENT_DATE - INTERVAL '79 days', 3, 20, 17)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (1, CURRENT_DATE - INTERVAL '72 days', 4, 20, 14)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (1, CURRENT_DATE - INTERVAL '65 days', 5, 20, 14)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (1, CURRENT_DATE - INTERVAL '58 days', 6, 20, 14)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (1, CURRENT_DATE - INTERVAL '51 days', 7, 20, 12)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (1, CURRENT_DATE - INTERVAL '44 days', 8, 20, 10)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (1, CURRENT_DATE - INTERVAL '37 days', 9, 20, 9)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (1, CURRENT_DATE - INTERVAL '30 days', 10, 20, 10)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (1, CURRENT_DATE - INTERVAL '23 days', 11, 20, 8)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (1, CURRENT_DATE - INTERVAL '16 days', 12, 20, 8)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (2, CURRENT_DATE - INTERVAL '93 days', 1, 20, 14)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (2, CURRENT_DATE - INTERVAL '86 days', 2, 20, 15)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (2, CURRENT_DATE - INTERVAL '79 days', 3, 20, 14)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (2, CURRENT_DATE - INTERVAL '72 days', 4, 20, 14)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (2, CURRENT_DATE - INTERVAL '65 days', 5, 20, 15)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (2, CURRENT_DATE - INTERVAL '58 days', 6, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (2, CURRENT_DATE - INTERVAL '51 days', 7, 20, 19)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (2, CURRENT_DATE - INTERVAL '44 days', 8, 20, 19)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (2, CURRENT_DATE - INTERVAL '37 days', 9, 20, 19)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (2, CURRENT_DATE - INTERVAL '30 days', 10, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (2, CURRENT_DATE - INTERVAL '23 days', 11, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (2, CURRENT_DATE - INTERVAL '16 days', 12, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (3, CURRENT_DATE - INTERVAL '93 days', 1, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (3, CURRENT_DATE - INTERVAL '86 days', 2, 20, 19)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (3, CURRENT_DATE - INTERVAL '79 days', 3, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (3, CURRENT_DATE - INTERVAL '72 days', 4, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (3, CURRENT_DATE - INTERVAL '65 days', 5, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (3, CURRENT_DATE - INTERVAL '58 days', 6, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (3, CURRENT_DATE - INTERVAL '51 days', 7, 20, 19)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (3, CURRENT_DATE - INTERVAL '44 days', 8, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (3, CURRENT_DATE - INTERVAL '37 days', 9, 20, 19)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (3, CURRENT_DATE - INTERVAL '30 days', 10, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (3, CURRENT_DATE - INTERVAL '23 days', 11, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (3, CURRENT_DATE - INTERVAL '16 days', 12, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (4, CURRENT_DATE - INTERVAL '93 days', 1, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (4, CURRENT_DATE - INTERVAL '86 days', 2, 20, 17)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (4, CURRENT_DATE - INTERVAL '79 days', 3, 20, 16)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (4, CURRENT_DATE - INTERVAL '72 days', 4, 20, 16)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (4, CURRENT_DATE - INTERVAL '65 days', 5, 20, 14)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (4, CURRENT_DATE - INTERVAL '58 days', 6, 20, 12)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (4, CURRENT_DATE - INTERVAL '51 days', 7, 20, 10)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (4, CURRENT_DATE - INTERVAL '44 days', 8, 20, 12)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (4, CURRENT_DATE - INTERVAL '37 days', 9, 20, 11)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (4, CURRENT_DATE - INTERVAL '30 days', 10, 20, 7)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (4, CURRENT_DATE - INTERVAL '23 days', 11, 20, 9)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (4, CURRENT_DATE - INTERVAL '16 days', 12, 20, 7)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (5, CURRENT_DATE - INTERVAL '93 days', 1, 20, 13)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (5, CURRENT_DATE - INTERVAL '86 days', 2, 20, 14)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (5, CURRENT_DATE - INTERVAL '79 days', 3, 20, 16)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (5, CURRENT_DATE - INTERVAL '72 days', 4, 20, 14)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (5, CURRENT_DATE - INTERVAL '65 days', 5, 20, 16)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (5, CURRENT_DATE - INTERVAL '58 days', 6, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (5, CURRENT_DATE - INTERVAL '51 days', 7, 20, 19)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (5, CURRENT_DATE - INTERVAL '44 days', 8, 20, 19)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (5, CURRENT_DATE - INTERVAL '37 days', 9, 20, 19)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (5, CURRENT_DATE - INTERVAL '30 days', 10, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (5, CURRENT_DATE - INTERVAL '23 days', 11, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (5, CURRENT_DATE - INTERVAL '16 days', 12, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (6, CURRENT_DATE - INTERVAL '93 days', 1, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (6, CURRENT_DATE - INTERVAL '86 days', 2, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (6, CURRENT_DATE - INTERVAL '79 days', 3, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (6, CURRENT_DATE - INTERVAL '72 days', 4, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (6, CURRENT_DATE - INTERVAL '65 days', 5, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (6, CURRENT_DATE - INTERVAL '58 days', 6, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (6, CURRENT_DATE - INTERVAL '51 days', 7, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (6, CURRENT_DATE - INTERVAL '44 days', 8, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (6, CURRENT_DATE - INTERVAL '37 days', 9, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (6, CURRENT_DATE - INTERVAL '30 days', 10, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (6, CURRENT_DATE - INTERVAL '23 days', 11, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (6, CURRENT_DATE - INTERVAL '16 days', 12, 20, 19)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (7, CURRENT_DATE - INTERVAL '93 days', 1, 20, 17)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (7, CURRENT_DATE - INTERVAL '86 days', 2, 20, 17)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (7, CURRENT_DATE - INTERVAL '79 days', 3, 20, 14)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (7, CURRENT_DATE - INTERVAL '72 days', 4, 20, 15)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (7, CURRENT_DATE - INTERVAL '65 days', 5, 20, 14)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (7, CURRENT_DATE - INTERVAL '58 days', 6, 20, 14)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (7, CURRENT_DATE - INTERVAL '51 days', 7, 20, 12)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (7, CURRENT_DATE - INTERVAL '44 days', 8, 20, 10)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (7, CURRENT_DATE - INTERVAL '37 days', 9, 20, 9)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (7, CURRENT_DATE - INTERVAL '30 days', 10, 20, 7)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (7, CURRENT_DATE - INTERVAL '23 days', 11, 20, 7)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (7, CURRENT_DATE - INTERVAL '16 days', 12, 20, 5)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (8, CURRENT_DATE - INTERVAL '93 days', 1, 20, 14)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (8, CURRENT_DATE - INTERVAL '86 days', 2, 20, 15)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (8, CURRENT_DATE - INTERVAL '79 days', 3, 20, 14)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (8, CURRENT_DATE - INTERVAL '72 days', 4, 20, 17)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (8, CURRENT_DATE - INTERVAL '65 days', 5, 20, 15)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (8, CURRENT_DATE - INTERVAL '58 days', 6, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (8, CURRENT_DATE - INTERVAL '51 days', 7, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (8, CURRENT_DATE - INTERVAL '44 days', 8, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (8, CURRENT_DATE - INTERVAL '37 days', 9, 20, 19)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (8, CURRENT_DATE - INTERVAL '30 days', 10, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (8, CURRENT_DATE - INTERVAL '23 days', 11, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (8, CURRENT_DATE - INTERVAL '16 days', 12, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (9, CURRENT_DATE - INTERVAL '93 days', 1, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (9, CURRENT_DATE - INTERVAL '86 days', 2, 20, 19)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (9, CURRENT_DATE - INTERVAL '79 days', 3, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (9, CURRENT_DATE - INTERVAL '72 days', 4, 20, 19)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (9, CURRENT_DATE - INTERVAL '65 days', 5, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (9, CURRENT_DATE - INTERVAL '58 days', 6, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (9, CURRENT_DATE - INTERVAL '51 days', 7, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (9, CURRENT_DATE - INTERVAL '44 days', 8, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (9, CURRENT_DATE - INTERVAL '37 days', 9, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (9, CURRENT_DATE - INTERVAL '30 days', 10, 20, 19)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (9, CURRENT_DATE - INTERVAL '23 days', 11, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (9, CURRENT_DATE - INTERVAL '16 days', 12, 20, 19)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (10, CURRENT_DATE - INTERVAL '93 days', 1, 20, 17)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (10, CURRENT_DATE - INTERVAL '86 days', 2, 20, 15)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (10, CURRENT_DATE - INTERVAL '79 days', 3, 20, 15)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (10, CURRENT_DATE - INTERVAL '72 days', 4, 20, 16)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (10, CURRENT_DATE - INTERVAL '65 days', 5, 20, 13)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (10, CURRENT_DATE - INTERVAL '58 days', 6, 20, 14)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (10, CURRENT_DATE - INTERVAL '51 days', 7, 20, 12)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (10, CURRENT_DATE - INTERVAL '44 days', 8, 20, 10)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (10, CURRENT_DATE - INTERVAL '37 days', 9, 20, 11)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (10, CURRENT_DATE - INTERVAL '30 days', 10, 20, 9)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (10, CURRENT_DATE - INTERVAL '23 days', 11, 20, 7)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (10, CURRENT_DATE - INTERVAL '16 days', 12, 20, 7)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (11, CURRENT_DATE - INTERVAL '93 days', 1, 20, 11)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (11, CURRENT_DATE - INTERVAL '86 days', 2, 20, 12)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (11, CURRENT_DATE - INTERVAL '79 days', 3, 20, 14)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (11, CURRENT_DATE - INTERVAL '72 days', 4, 20, 15)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (11, CURRENT_DATE - INTERVAL '65 days', 5, 20, 15)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (11, CURRENT_DATE - INTERVAL '58 days', 6, 20, 16)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (11, CURRENT_DATE - INTERVAL '51 days', 7, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (11, CURRENT_DATE - INTERVAL '44 days', 8, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (11, CURRENT_DATE - INTERVAL '37 days', 9, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (11, CURRENT_DATE - INTERVAL '30 days', 10, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (11, CURRENT_DATE - INTERVAL '23 days', 11, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (11, CURRENT_DATE - INTERVAL '16 days', 12, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (12, CURRENT_DATE - INTERVAL '93 days', 1, 20, 19)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (12, CURRENT_DATE - INTERVAL '86 days', 2, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (12, CURRENT_DATE - INTERVAL '79 days', 3, 20, 19)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (12, CURRENT_DATE - INTERVAL '72 days', 4, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (12, CURRENT_DATE - INTERVAL '65 days', 5, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (12, CURRENT_DATE - INTERVAL '58 days', 6, 20, 19)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (12, CURRENT_DATE - INTERVAL '51 days', 7, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (12, CURRENT_DATE - INTERVAL '44 days', 8, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (12, CURRENT_DATE - INTERVAL '37 days', 9, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (12, CURRENT_DATE - INTERVAL '30 days', 10, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (12, CURRENT_DATE - INTERVAL '23 days', 11, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (12, CURRENT_DATE - INTERVAL '16 days', 12, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (13, CURRENT_DATE - INTERVAL '93 days', 1, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (13, CURRENT_DATE - INTERVAL '86 days', 2, 20, 17)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (13, CURRENT_DATE - INTERVAL '79 days', 3, 20, 15)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (13, CURRENT_DATE - INTERVAL '72 days', 4, 20, 16)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (13, CURRENT_DATE - INTERVAL '65 days', 5, 20, 12)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (13, CURRENT_DATE - INTERVAL '58 days', 6, 20, 13)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (13, CURRENT_DATE - INTERVAL '51 days', 7, 20, 10)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (13, CURRENT_DATE - INTERVAL '44 days', 8, 20, 11)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (13, CURRENT_DATE - INTERVAL '37 days', 9, 20, 10)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (13, CURRENT_DATE - INTERVAL '30 days', 10, 20, 9)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (13, CURRENT_DATE - INTERVAL '23 days', 11, 20, 7)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (13, CURRENT_DATE - INTERVAL '16 days', 12, 20, 8)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (14, CURRENT_DATE - INTERVAL '93 days', 1, 20, 12)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (14, CURRENT_DATE - INTERVAL '86 days', 2, 20, 12)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (14, CURRENT_DATE - INTERVAL '79 days', 3, 20, 15)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (14, CURRENT_DATE - INTERVAL '72 days', 4, 20, 15)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (14, CURRENT_DATE - INTERVAL '65 days', 5, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (14, CURRENT_DATE - INTERVAL '58 days', 6, 20, 17)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (14, CURRENT_DATE - INTERVAL '51 days', 7, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (14, CURRENT_DATE - INTERVAL '44 days', 8, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (14, CURRENT_DATE - INTERVAL '37 days', 9, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (14, CURRENT_DATE - INTERVAL '30 days', 10, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (14, CURRENT_DATE - INTERVAL '23 days', 11, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (14, CURRENT_DATE - INTERVAL '16 days', 12, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (15, CURRENT_DATE - INTERVAL '93 days', 1, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (15, CURRENT_DATE - INTERVAL '86 days', 2, 20, 19)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (15, CURRENT_DATE - INTERVAL '79 days', 3, 20, 19)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (15, CURRENT_DATE - INTERVAL '72 days', 4, 20, 19)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (15, CURRENT_DATE - INTERVAL '65 days', 5, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (15, CURRENT_DATE - INTERVAL '58 days', 6, 20, 19)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (15, CURRENT_DATE - INTERVAL '51 days', 7, 20, 19)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (15, CURRENT_DATE - INTERVAL '44 days', 8, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (15, CURRENT_DATE - INTERVAL '37 days', 9, 20, 19)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (15, CURRENT_DATE - INTERVAL '30 days', 10, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (15, CURRENT_DATE - INTERVAL '23 days', 11, 20, 19)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (15, CURRENT_DATE - INTERVAL '16 days', 12, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (16, CURRENT_DATE - INTERVAL '93 days', 1, 20, 16)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (16, CURRENT_DATE - INTERVAL '86 days', 2, 20, 16)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (16, CURRENT_DATE - INTERVAL '79 days', 3, 20, 14)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (16, CURRENT_DATE - INTERVAL '72 days', 4, 20, 14)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (16, CURRENT_DATE - INTERVAL '65 days', 5, 20, 14)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (16, CURRENT_DATE - INTERVAL '58 days', 6, 20, 14)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (16, CURRENT_DATE - INTERVAL '51 days', 7, 20, 12)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (16, CURRENT_DATE - INTERVAL '44 days', 8, 20, 12)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (16, CURRENT_DATE - INTERVAL '37 days', 9, 20, 10)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (16, CURRENT_DATE - INTERVAL '30 days', 10, 20, 7)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (16, CURRENT_DATE - INTERVAL '23 days', 11, 20, 7)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (16, CURRENT_DATE - INTERVAL '16 days', 12, 20, 8)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (17, CURRENT_DATE - INTERVAL '93 days', 1, 20, 12)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (17, CURRENT_DATE - INTERVAL '86 days', 2, 20, 14)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (17, CURRENT_DATE - INTERVAL '79 days', 3, 20, 13)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (17, CURRENT_DATE - INTERVAL '72 days', 4, 20, 15)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (17, CURRENT_DATE - INTERVAL '65 days', 5, 20, 16)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (17, CURRENT_DATE - INTERVAL '58 days', 6, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (17, CURRENT_DATE - INTERVAL '51 days', 7, 20, 19)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (17, CURRENT_DATE - INTERVAL '44 days', 8, 20, 19)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (17, CURRENT_DATE - INTERVAL '37 days', 9, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (17, CURRENT_DATE - INTERVAL '30 days', 10, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (17, CURRENT_DATE - INTERVAL '23 days', 11, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (17, CURRENT_DATE - INTERVAL '16 days', 12, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (18, CURRENT_DATE - INTERVAL '93 days', 1, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (18, CURRENT_DATE - INTERVAL '86 days', 2, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (18, CURRENT_DATE - INTERVAL '79 days', 3, 20, 19)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (18, CURRENT_DATE - INTERVAL '72 days', 4, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (18, CURRENT_DATE - INTERVAL '65 days', 5, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (18, CURRENT_DATE - INTERVAL '58 days', 6, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (18, CURRENT_DATE - INTERVAL '51 days', 7, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (18, CURRENT_DATE - INTERVAL '44 days', 8, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (18, CURRENT_DATE - INTERVAL '37 days', 9, 20, 19)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (18, CURRENT_DATE - INTERVAL '30 days', 10, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (18, CURRENT_DATE - INTERVAL '23 days', 11, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (18, CURRENT_DATE - INTERVAL '16 days', 12, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (19, CURRENT_DATE - INTERVAL '93 days', 1, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (19, CURRENT_DATE - INTERVAL '86 days', 2, 20, 15)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (19, CURRENT_DATE - INTERVAL '79 days', 3, 20, 16)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (19, CURRENT_DATE - INTERVAL '72 days', 4, 20, 15)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (19, CURRENT_DATE - INTERVAL '65 days', 5, 20, 14)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (19, CURRENT_DATE - INTERVAL '58 days', 6, 20, 13)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (19, CURRENT_DATE - INTERVAL '51 days', 7, 20, 10)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (19, CURRENT_DATE - INTERVAL '44 days', 8, 20, 9)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (19, CURRENT_DATE - INTERVAL '37 days', 9, 20, 11)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (19, CURRENT_DATE - INTERVAL '30 days', 10, 20, 9)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (19, CURRENT_DATE - INTERVAL '23 days', 11, 20, 7)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (19, CURRENT_DATE - INTERVAL '16 days', 12, 20, 7)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (20, CURRENT_DATE - INTERVAL '93 days', 1, 20, 12)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (20, CURRENT_DATE - INTERVAL '86 days', 2, 20, 12)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (20, CURRENT_DATE - INTERVAL '79 days', 3, 20, 14)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (20, CURRENT_DATE - INTERVAL '72 days', 4, 20, 14)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (20, CURRENT_DATE - INTERVAL '65 days', 5, 20, 16)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (20, CURRENT_DATE - INTERVAL '58 days', 6, 20, 16)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (20, CURRENT_DATE - INTERVAL '51 days', 7, 20, 17)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (20, CURRENT_DATE - INTERVAL '44 days', 8, 20, 18)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (20, CURRENT_DATE - INTERVAL '37 days', 9, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (20, CURRENT_DATE - INTERVAL '30 days', 10, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (20, CURRENT_DATE - INTERVAL '23 days', 11, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        

INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES (20, CURRENT_DATE - INTERVAL '16 days', 12, 20, 20)
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        
-- Assessments (IDs 1-6)

INSERT INTO assessments (assessment_id, name, subject, semester, assessment_date, max_marks)
VALUES (1, 'Midterm 1', 'Data Structures', 3, CURRENT_DATE - INTERVAL '28 days', 50.0)
ON CONFLICT (assessment_id) DO UPDATE SET 
    name = EXCLUDED.name, max_marks = EXCLUDED.max_marks;
    

INSERT INTO assessments (assessment_id, name, subject, semester, assessment_date, max_marks)
VALUES (2, 'Final 1', 'Data Structures', 3, CURRENT_DATE - INTERVAL '26 days', 100.0)
ON CONFLICT (assessment_id) DO UPDATE SET 
    name = EXCLUDED.name, max_marks = EXCLUDED.max_marks;
    

INSERT INTO assessments (assessment_id, name, subject, semester, assessment_date, max_marks)
VALUES (3, 'Midterm 2', 'Algorithms', 4, CURRENT_DATE - INTERVAL '24 days', 50.0)
ON CONFLICT (assessment_id) DO UPDATE SET 
    name = EXCLUDED.name, max_marks = EXCLUDED.max_marks;
    

INSERT INTO assessments (assessment_id, name, subject, semester, assessment_date, max_marks)
VALUES (4, 'Final 2', 'Algorithms', 4, CURRENT_DATE - INTERVAL '22 days', 100.0)
ON CONFLICT (assessment_id) DO UPDATE SET 
    name = EXCLUDED.name, max_marks = EXCLUDED.max_marks;
    

INSERT INTO assessments (assessment_id, name, subject, semester, assessment_date, max_marks)
VALUES (5, 'Lab 1', 'Database', 4, CURRENT_DATE - INTERVAL '20 days', 25.0)
ON CONFLICT (assessment_id) DO UPDATE SET 
    name = EXCLUDED.name, max_marks = EXCLUDED.max_marks;
    

INSERT INTO assessments (assessment_id, name, subject, semester, assessment_date, max_marks)
VALUES (6, 'Lab 2', 'Database', 4, CURRENT_DATE - INTERVAL '18 days', 25.0)
ON CONFLICT (assessment_id) DO UPDATE SET 
    name = EXCLUDED.name, max_marks = EXCLUDED.max_marks;
    
-- Assessment Results for each student

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (1, 1, 39.7)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (1, 2, 63.8)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (1, 3, 29.78)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (1, 4, 67.63)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (1, 5, 12.67)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (1, 6, 11.57)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (2, 1, 32.23)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (2, 2, 70.4)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (2, 3, 42.8)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (2, 4, 68.72)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (2, 5, 16.75)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (2, 6, 21.42)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (3, 1, 48.11)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (3, 2, 94.8)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (3, 3, 47.71)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (3, 4, 88.47)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (3, 5, 22.79)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (3, 6, 21.31)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (4, 1, 34.16)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (4, 2, 44.06)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (4, 3, 32.6)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (4, 4, 45.69)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (4, 5, 15.62)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (4, 6, 10.94)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (5, 1, 30.48)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (5, 2, 74.24)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (5, 3, 34.7)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (5, 4, 86.69)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (5, 5, 17.59)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (5, 6, 18.0)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (6, 1, 46.51)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (6, 2, 96.74)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (6, 3, 46.47)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (6, 4, 92.76)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (6, 5, 22.74)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (6, 6, 21.4)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (7, 1, 32.93)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (7, 2, 59.29)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (7, 3, 36.4)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (7, 4, 56.2)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (7, 5, 10.21)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (7, 6, 11.61)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (8, 1, 37.54)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (8, 2, 77.01)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (8, 3, 29.07)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (8, 4, 69.31)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (8, 5, 18.54)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (8, 6, 19.45)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (9, 1, 44.52)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (9, 2, 89.26)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (9, 3, 47.07)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (9, 4, 94.0)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (9, 5, 24.17)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (9, 6, 24.58)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (10, 1, 26.36)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (10, 2, 50.86)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (10, 3, 25.08)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (10, 4, 56.56)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (10, 5, 15.91)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (10, 6, 11.17)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (11, 1, 37.87)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (11, 2, 79.19)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (11, 3, 34.26)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (11, 4, 88.69)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (11, 5, 21.2)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (11, 6, 21.99)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (12, 1, 45.6)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (12, 2, 96.96)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (12, 3, 47.54)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (12, 4, 94.06)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (12, 5, 21.33)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (12, 6, 21.54)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (13, 1, 32.93)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (13, 2, 76.84)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (13, 3, 29.59)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (13, 4, 45.11)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (13, 5, 10.97)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (13, 6, 13.33)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (14, 1, 40.7)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (14, 2, 87.62)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (14, 3, 43.83)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (14, 4, 65.91)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (14, 5, 16.88)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (14, 6, 17.52)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (15, 1, 49.66)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (15, 2, 99.77)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (15, 3, 44.7)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (15, 4, 90.59)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (15, 5, 22.16)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (15, 6, 23.35)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (16, 1, 32.84)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (16, 2, 42.4)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (16, 3, 29.09)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (16, 4, 62.62)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (16, 5, 15.54)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (16, 6, 10.07)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (17, 1, 37.92)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (17, 2, 50.44)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (17, 3, 28.65)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (17, 4, 65.77)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (17, 5, 21.33)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (17, 6, 18.59)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (18, 1, 46.86)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (18, 2, 92.0)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (18, 3, 49.12)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (18, 4, 91.57)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (18, 5, 21.55)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (18, 6, 22.83)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (19, 1, 23.04)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (19, 2, 63.35)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (19, 3, 25.56)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (19, 4, 56.9)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (19, 5, 10.57)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (19, 6, 10.99)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (20, 1, 31.28)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (20, 2, 57.27)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (20, 3, 27.69)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (20, 4, 64.07)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (20, 5, 20.76)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        

INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES (20, 6, 18.0)
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        
-- Semester Results (GPA history)

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (1, 1, '2023-2024', 5.72)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (1, 2, '2023-2024', 5.21)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (1, 3, '2023-2024', 6.78)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (1, 4, '2023-2024', 4.17)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (2, 1, '2023-2024', 7.34)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (2, 2, '2023-2024', 6.47)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (2, 3, '2023-2024', 7.89)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (2, 4, '2023-2024', 8.63)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (3, 1, '2023-2024', 9.42)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (3, 2, '2023-2024', 9.56)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (3, 3, '2023-2024', 9.01)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (3, 4, '2023-2024', 8.56)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (4, 1, '2023-2024', 5.37)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (4, 2, '2023-2024', 6.88)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (4, 3, '2023-2024', 5.33)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (4, 4, '2023-2024', 4.25)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (5, 1, '2023-2024', 7.13)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (5, 2, '2023-2024', 7.52)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (5, 3, '2023-2024', 7.32)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (5, 4, '2023-2024', 8.72)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (6, 1, '2023-2024', 9.05)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (6, 2, '2023-2024', 9.51)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (6, 3, '2023-2024', 8.52)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (6, 4, '2023-2024', 8.87)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (7, 1, '2023-2024', 5.59)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (7, 2, '2023-2024', 5.01)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (7, 3, '2023-2024', 6.5)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (7, 4, '2023-2024', 6.49)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (8, 1, '2023-2024', 6.69)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (8, 2, '2023-2024', 7.11)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (8, 3, '2023-2024', 7.35)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (8, 4, '2023-2024', 7.26)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (9, 1, '2023-2024', 8.99)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (9, 2, '2023-2024', 8.54)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (9, 3, '2023-2024', 9.71)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (9, 4, '2023-2024', 8.54)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (10, 1, '2023-2024', 7.69)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (10, 2, '2023-2024', 6.9)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (10, 3, '2023-2024', 6.58)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (10, 4, '2023-2024', 5.47)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (11, 1, '2023-2024', 7.36)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (11, 2, '2023-2024', 6.87)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (11, 3, '2023-2024', 7.18)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (11, 4, '2023-2024', 8.13)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (12, 1, '2023-2024', 9.59)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (12, 2, '2023-2024', 9.25)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (12, 3, '2023-2024', 8.98)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (12, 4, '2023-2024', 8.76)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (13, 1, '2023-2024', 7.37)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (13, 2, '2023-2024', 6.86)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (13, 3, '2023-2024', 4.35)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (13, 4, '2023-2024', 5.8)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (14, 1, '2023-2024', 6.51)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (14, 2, '2023-2024', 6.43)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (14, 3, '2023-2024', 7.63)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (14, 4, '2023-2024', 7.02)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (15, 1, '2023-2024', 8.97)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (15, 2, '2023-2024', 8.87)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (15, 3, '2023-2024', 9.64)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (15, 4, '2023-2024', 8.82)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (16, 1, '2023-2024', 5.29)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (16, 2, '2023-2024', 5.31)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (16, 3, '2023-2024', 5.59)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (16, 4, '2023-2024', 5.65)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (17, 1, '2023-2024', 6.84)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (17, 2, '2023-2024', 6.65)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (17, 3, '2023-2024', 7.45)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (17, 4, '2023-2024', 7.94)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (18, 1, '2023-2024', 9.47)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (18, 2, '2023-2024', 8.84)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (18, 3, '2023-2024', 9.24)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (18, 4, '2023-2024', 9.64)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (19, 1, '2023-2024', 6.7)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (19, 2, '2023-2024', 5.58)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (19, 3, '2023-2024', 5.36)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (19, 4, '2023-2024', 4.23)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (20, 1, '2023-2024', 5.79)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (20, 2, '2023-2024', 6.64)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (20, 3, '2023-2024', 7.87)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        

INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES (20, 4, '2023-2024', 7.96)
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        
-- Financial Records

INSERT INTO financial_records (student_id, fee_delay_days, has_financial_support, financial_notes)
VALUES (1, 0, TRUE, 'Auto-generated notes')
ON CONFLICT (student_id) DO UPDATE SET 
    fee_delay_days = EXCLUDED.fee_delay_days, has_financial_support = EXCLUDED.has_financial_support;
    

INSERT INTO financial_records (student_id, fee_delay_days, has_financial_support, financial_notes)
VALUES (2, 0, TRUE, 'Auto-generated notes')
ON CONFLICT (student_id) DO UPDATE SET 
    fee_delay_days = EXCLUDED.fee_delay_days, has_financial_support = EXCLUDED.has_financial_support;
    

INSERT INTO financial_records (student_id, fee_delay_days, has_financial_support, financial_notes)
VALUES (3, 0, TRUE, 'Auto-generated notes')
ON CONFLICT (student_id) DO UPDATE SET 
    fee_delay_days = EXCLUDED.fee_delay_days, has_financial_support = EXCLUDED.has_financial_support;
    

INSERT INTO financial_records (student_id, fee_delay_days, has_financial_support, financial_notes)
VALUES (4, 0, TRUE, 'Auto-generated notes')
ON CONFLICT (student_id) DO UPDATE SET 
    fee_delay_days = EXCLUDED.fee_delay_days, has_financial_support = EXCLUDED.has_financial_support;
    

INSERT INTO financial_records (student_id, fee_delay_days, has_financial_support, financial_notes)
VALUES (5, 0, TRUE, 'Auto-generated notes')
ON CONFLICT (student_id) DO UPDATE SET 
    fee_delay_days = EXCLUDED.fee_delay_days, has_financial_support = EXCLUDED.has_financial_support;
    

INSERT INTO financial_records (student_id, fee_delay_days, has_financial_support, financial_notes)
VALUES (6, 30, TRUE, 'Auto-generated notes')
ON CONFLICT (student_id) DO UPDATE SET 
    fee_delay_days = EXCLUDED.fee_delay_days, has_financial_support = EXCLUDED.has_financial_support;
    

INSERT INTO financial_records (student_id, fee_delay_days, has_financial_support, financial_notes)
VALUES (7, 0, TRUE, 'Auto-generated notes')
ON CONFLICT (student_id) DO UPDATE SET 
    fee_delay_days = EXCLUDED.fee_delay_days, has_financial_support = EXCLUDED.has_financial_support;
    

INSERT INTO financial_records (student_id, fee_delay_days, has_financial_support, financial_notes)
VALUES (8, 0, FALSE, 'Auto-generated notes')
ON CONFLICT (student_id) DO UPDATE SET 
    fee_delay_days = EXCLUDED.fee_delay_days, has_financial_support = EXCLUDED.has_financial_support;
    

INSERT INTO financial_records (student_id, fee_delay_days, has_financial_support, financial_notes)
VALUES (9, 90, FALSE, 'Auto-generated notes')
ON CONFLICT (student_id) DO UPDATE SET 
    fee_delay_days = EXCLUDED.fee_delay_days, has_financial_support = EXCLUDED.has_financial_support;
    

INSERT INTO financial_records (student_id, fee_delay_days, has_financial_support, financial_notes)
VALUES (10, 0, FALSE, 'Auto-generated notes')
ON CONFLICT (student_id) DO UPDATE SET 
    fee_delay_days = EXCLUDED.fee_delay_days, has_financial_support = EXCLUDED.has_financial_support;
    

INSERT INTO financial_records (student_id, fee_delay_days, has_financial_support, financial_notes)
VALUES (11, 0, FALSE, 'Auto-generated notes')
ON CONFLICT (student_id) DO UPDATE SET 
    fee_delay_days = EXCLUDED.fee_delay_days, has_financial_support = EXCLUDED.has_financial_support;
    

INSERT INTO financial_records (student_id, fee_delay_days, has_financial_support, financial_notes)
VALUES (12, 0, TRUE, 'Auto-generated notes')
ON CONFLICT (student_id) DO UPDATE SET 
    fee_delay_days = EXCLUDED.fee_delay_days, has_financial_support = EXCLUDED.has_financial_support;
    

INSERT INTO financial_records (student_id, fee_delay_days, has_financial_support, financial_notes)
VALUES (13, 15, FALSE, 'Auto-generated notes')
ON CONFLICT (student_id) DO UPDATE SET 
    fee_delay_days = EXCLUDED.fee_delay_days, has_financial_support = EXCLUDED.has_financial_support;
    

INSERT INTO financial_records (student_id, fee_delay_days, has_financial_support, financial_notes)
VALUES (14, 0, TRUE, 'Auto-generated notes')
ON CONFLICT (student_id) DO UPDATE SET 
    fee_delay_days = EXCLUDED.fee_delay_days, has_financial_support = EXCLUDED.has_financial_support;
    

INSERT INTO financial_records (student_id, fee_delay_days, has_financial_support, financial_notes)
VALUES (15, 0, TRUE, 'Auto-generated notes')
ON CONFLICT (student_id) DO UPDATE SET 
    fee_delay_days = EXCLUDED.fee_delay_days, has_financial_support = EXCLUDED.has_financial_support;
    

INSERT INTO financial_records (student_id, fee_delay_days, has_financial_support, financial_notes)
VALUES (16, 15, FALSE, 'Auto-generated notes')
ON CONFLICT (student_id) DO UPDATE SET 
    fee_delay_days = EXCLUDED.fee_delay_days, has_financial_support = EXCLUDED.has_financial_support;
    

INSERT INTO financial_records (student_id, fee_delay_days, has_financial_support, financial_notes)
VALUES (17, 90, FALSE, 'Auto-generated notes')
ON CONFLICT (student_id) DO UPDATE SET 
    fee_delay_days = EXCLUDED.fee_delay_days, has_financial_support = EXCLUDED.has_financial_support;
    

INSERT INTO financial_records (student_id, fee_delay_days, has_financial_support, financial_notes)
VALUES (18, 0, FALSE, 'Auto-generated notes')
ON CONFLICT (student_id) DO UPDATE SET 
    fee_delay_days = EXCLUDED.fee_delay_days, has_financial_support = EXCLUDED.has_financial_support;
    

INSERT INTO financial_records (student_id, fee_delay_days, has_financial_support, financial_notes)
VALUES (19, 0, FALSE, 'Auto-generated notes')
ON CONFLICT (student_id) DO UPDATE SET 
    fee_delay_days = EXCLUDED.fee_delay_days, has_financial_support = EXCLUDED.has_financial_support;
    

INSERT INTO financial_records (student_id, fee_delay_days, has_financial_support, financial_notes)
VALUES (20, 45, FALSE, 'Auto-generated notes')
ON CONFLICT (student_id) DO UPDATE SET 
    fee_delay_days = EXCLUDED.fee_delay_days, has_financial_support = EXCLUDED.has_financial_support;
    

-- Adjust sequences to avoid conflicts for future manual inserts
SELECT setval('faculty_faculty_id_seq', (SELECT MAX(faculty_id) FROM faculty));
SELECT setval('students_student_id_seq', (SELECT MAX(student_id) FROM students));
SELECT setval('assessments_assessment_id_seq', (SELECT MAX(assessment_id) FROM assessments));
