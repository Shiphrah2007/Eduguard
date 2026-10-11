-- EduGuard Verification Script
SET search_path TO eduguard, public;

-- 1. Verify exact count of students
SELECT 
    (SELECT count(*) FROM students) AS total_students,
    CASE WHEN (SELECT count(*) FROM students) = 20 THEN 'PASSED' ELSE 'FAILED' END AS student_count_check;

-- 2. Verify every student has exactly 12 weeks of attendance
SELECT 
    student_id, 
    COUNT(week_number) AS weeks_recorded,
    CASE WHEN COUNT(week_number) = 12 THEN 'PASSED' ELSE 'FAILED' END AS attendance_count_check
FROM attendance_records
GROUP BY student_id
ORDER BY student_id;

-- 3. Check for any invalid marks (marks < 0 or marks > max_marks)
SELECT 
    ar.student_id, 
    a.name AS assessment_name, 
    ar.marks_obtained, 
    a.max_marks,
    'FAILED: Invalid marks detected' AS status
FROM assessment_results ar
JOIN assessments a ON ar.assessment_id = a.assessment_id
WHERE ar.marks_obtained < 0 OR ar.marks_obtained > a.max_marks;

-- 4. Check for attendance inconsistencies (attended > conducted)
SELECT 
    student_id, 
    week_number, 
    classes_conducted, 
    classes_attended,
    'FAILED: Invalid attendance detected' AS status
FROM attendance_records
WHERE classes_attended > classes_conducted OR classes_attended < 0;

-- 5. Join students with financial, assignment, and semester records to verify complete profile
SELECT 
    s.reg_no,
    s.name,
    f.name AS faculty_assigned,
    fr.has_financial_support,
    fr.fee_delay_days,
    COUNT(DISTINCT sr.semester) AS total_semesters_recorded
FROM students s
JOIN faculty_student_assignments fsa ON s.student_id = fsa.student_id
JOIN faculty f ON fsa.faculty_id = f.faculty_id
JOIN financial_records fr ON s.student_id = fr.student_id
JOIN semester_results sr ON s.student_id = sr.student_id
GROUP BY s.reg_no, s.name, f.name, fr.has_financial_support, fr.fee_delay_days
ORDER BY s.reg_no;
