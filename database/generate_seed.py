import random

sql = []
sql.append("-- EduGuard Simulated Seed Data")
sql.append("-- This script uses explicit IDs and ON CONFLICT DO UPDATE for idempotency.")
sql.append("SET search_path TO eduguard, public;")
sql.append("")

# Faculty
sql.append("""
INSERT INTO faculty (faculty_id, name, email, is_active)
VALUES (1, 'Dr. Admin Faculty', 'admin@eduguard.edu', TRUE)
ON CONFLICT (faculty_id) DO UPDATE SET name = EXCLUDED.name, email = EXCLUDED.email;
""")

# Students
departments = ['Computer Science', 'Mechanical', 'Electrical', 'Civil']
sections = ['A', 'B']

sql.append("-- Seed 20 Students (IDs 1-20)")
for i in range(1, 21):
    reg = f"S-100{i}" if i < 10 else f"S-10{i}"
    dept = departments[i % 4]
    sec = sections[i % 2]
    name = f"Student {i}"
    
    sql.append(f"""
INSERT INTO students (student_id, reg_no, name, department, section, current_semester, enrollment_year, is_active)
VALUES ({i}, '{reg}', '{name}', '{dept}', '{sec}', 4, 2024, TRUE)
ON CONFLICT (student_id) DO UPDATE SET 
    reg_no = EXCLUDED.reg_no, name = EXCLUDED.name, department = EXCLUDED.department, 
    section = EXCLUDED.section, current_semester = EXCLUDED.current_semester;
    """)

# Assignments
sql.append("-- Assign all 20 students to Faculty 1")
for i in range(1, 21):
    sql.append(f"""
INSERT INTO faculty_student_assignments (faculty_id, student_id)
VALUES (1, {i})
ON CONFLICT (faculty_id, student_id) DO NOTHING;
    """)

# Attendance (12 weeks)
sql.append("-- 12 weeks of attendance for each student")
# Let's define some patterns: 
# i % 3 == 0 (good attendance)
# i % 3 == 1 (declining attendance)
# i % 3 == 2 (improving attendance)

for i in range(1, 21):
    trend = i % 3
    for w in range(1, 13):
        conducted = 20
        if trend == 0:
            attended = random.randint(18, 20)
        elif trend == 1:
            attended = max(0, 20 - w - random.randint(0, 3)) # Declining
        else:
            attended = min(20, 10 + w + random.randint(0, 3)) # Improving
        
        date_str = f"2024-03-{w:02d}" if w < 32 else f"2024-04-{(w%30)+1:02d}" # Dummy date
        # using a simple date progression
        
        sql.append(f"""
INSERT INTO attendance_records (student_id, date, week_number, classes_conducted, classes_attended)
VALUES ({i}, CURRENT_DATE - INTERVAL '{100 - w*7} days', {w}, {conducted}, {attended})
ON CONFLICT (student_id, week_number) DO UPDATE SET 
    classes_conducted = EXCLUDED.classes_conducted, classes_attended = EXCLUDED.classes_attended;
        """)

# Assessments
sql.append("-- Assessments (IDs 1-6)")
assessments = [
    (1, 'Midterm 1', 'Data Structures', 3, 50.00),
    (2, 'Final 1', 'Data Structures', 3, 100.00),
    (3, 'Midterm 2', 'Algorithms', 4, 50.00),
    (4, 'Final 2', 'Algorithms', 4, 100.00),
    (5, 'Lab 1', 'Database', 4, 25.00),
    (6, 'Lab 2', 'Database', 4, 25.00)
]

for a in assessments:
    sql.append(f"""
INSERT INTO assessments (assessment_id, name, subject, semester, assessment_date, max_marks)
VALUES ({a[0]}, '{a[1]}', '{a[2]}', {a[3]}, CURRENT_DATE - INTERVAL '{30 - a[0]*2} days', {a[4]})
ON CONFLICT (assessment_id) DO UPDATE SET 
    name = EXCLUDED.name, max_marks = EXCLUDED.max_marks;
    """)

# Assessment Results
sql.append("-- Assessment Results for each student")
for i in range(1, 21):
    trend = i % 3
    for a in assessments:
        max_marks = a[4]
        # Same trend logic
        if trend == 0:
            obtained = round(max_marks * random.uniform(0.85, 1.0), 2)
        elif trend == 1: # declining
            obtained = round(max_marks * random.uniform(0.4, 0.9 - (a[0]*0.05)), 2)
        else: # improving
            obtained = round(max_marks * random.uniform(0.4 + (a[0]*0.05), 0.9), 2)
            
        obtained = max(0, min(max_marks, obtained))
        sql.append(f"""
INSERT INTO assessment_results (student_id, assessment_id, marks_obtained)
VALUES ({i}, {a[0]}, {obtained})
ON CONFLICT (student_id, assessment_id) DO UPDATE SET marks_obtained = EXCLUDED.marks_obtained;
        """)

# Semester Results
sql.append("-- Semester Results (GPA history)")
for i in range(1, 21):
    trend = i % 3
    for s in range(1, 5): # Semesters 1 to 4
        if trend == 0:
            gpa = round(random.uniform(8.5, 9.8), 2)
        elif trend == 1:
            gpa = round(random.uniform(5.5, 8.5) - (s * 0.4), 2)
        else:
            gpa = round(random.uniform(5.0, 7.0) + (s * 0.5), 2)
            
        gpa = max(0.0, min(10.0, gpa))
        
        sql.append(f"""
INSERT INTO semester_results (student_id, semester, academic_year, gpa)
VALUES ({i}, {s}, '2023-2024', {gpa})
ON CONFLICT (student_id, semester) DO UPDATE SET gpa = EXCLUDED.gpa;
        """)

# Financial Records
sql.append("-- Financial Records")
for i in range(1, 21):
    fee_delay = random.choice([0, 0, 0, 15, 30, 45, 90])
    has_support = random.choice(['TRUE', 'FALSE'])
    sql.append(f"""
INSERT INTO financial_records (student_id, fee_delay_days, has_financial_support, financial_notes)
VALUES ({i}, {fee_delay}, {has_support}, 'Auto-generated notes')
ON CONFLICT (student_id) DO UPDATE SET 
    fee_delay_days = EXCLUDED.fee_delay_days, has_financial_support = EXCLUDED.has_financial_support;
    """)

# Reset sequences so future inserts don't collide with the fixed IDs
sql.append("""
-- Adjust sequences to avoid conflicts for future manual inserts
SELECT setval('faculty_faculty_id_seq', (SELECT MAX(faculty_id) FROM faculty));
SELECT setval('students_student_id_seq', (SELECT MAX(student_id) FROM students));
SELECT setval('assessments_assessment_id_seq', (SELECT MAX(assessment_id) FROM assessments));
""")

with open(r'C:\Users\SHIPHRAH JOYCE\.gemini\antigravity\scratch\eduguard\database\seed-data.sql', 'w') as f:
    f.write("\n".join(sql))
