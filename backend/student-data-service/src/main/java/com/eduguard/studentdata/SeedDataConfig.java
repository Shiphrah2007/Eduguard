package com.eduguard.studentdata;

import com.eduguard.studentdata.model.*;
import com.eduguard.studentdata.repository.*;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.math.BigDecimal;
import java.time.LocalDate;

@Configuration
public class SeedDataConfig {

    private static final String[] TAMIL_NAMES = {
        "Aarav Natarajan", "Aditi Krishnan", "Arjun Subramaniam", "Bhargavi Iyer", "Deepak Raj",
        "Divya Karthik", "Gautam Chandran", "Harish Balasubramanian", "Janani Srinivasan", "Karthik Kumar",
        "Kavya Ramanathan", "Manoj Prabhakar", "Nandhini Ramaswamy", "Naveen Venkatesh", "Nithya Murugan",
        "Pradeep Swaminathan", "Priya Ranganathan", "Rahul Senthil", "Sandhya Pillai", "Surya Prakash"
    };

    @Bean
    CommandLineRunner initDatabase(StudentRepository studentRepo, AttendanceRepository attRepo,
                                   AssessmentRepository assRepo, SemesterHistoryRepository histRepo,
                                   StudentFacultyAssignmentRepository assignRepo) {
        return args -> {
            if (studentRepo.count() > 0) return;

            for (int i = 0; i < 20; i++) {
                Student s = new Student();
                s.setStudentCode("S-" + (101 + i));
                
                String[] nameParts = TAMIL_NAMES[i].split(" ");
                s.setFirstName(nameParts[0]);
                s.setLastName(nameParts[1]);
                s.setEmail(nameParts[0].toLowerCase() + "." + nameParts[1].toLowerCase() + "@college.edu");
                s.setEnrollmentDate(LocalDate.of(2024, 9, 1));
                s.setStatus("ACTIVE");
                s.setDepartment(i % 2 == 0 ? "Computer Science" : "Physics");
                s.setCurrentSemester(4);
                s.setSection("A");
                
                s = studentRepo.save(s);

                StudentFacultyAssignment sfa = new StudentFacultyAssignment();
                sfa.setStudentId(s.getId());
                sfa.setFacultyId(i % 2 == 0 ? 1L : 2L);
                sfa.setAssignmentRole("ADVISOR");
                assignRepo.save(sfa);

                // High Risk (5): index 0-4
                // Medium Risk (7): index 5-11
                // Low Risk (8): index 12-19
                
                int classesConducted = 40;
                int classesAttended;
                double baseGpa;
                int midtermScore;

                if (i < 5) {
                    classesAttended = 22 + (i % 2); // ~55-57%
                    baseGpa = 1.8;
                    midtermScore = 45 + (i % 5);
                } else if (i < 12) {
                    classesAttended = 30 + (i % 3); // ~75-80%
                    baseGpa = 2.5;
                    midtermScore = 60 + (i % 5);
                } else {
                    classesAttended = 38 + (i % 3); // ~95-100%
                    baseGpa = 3.5;
                    midtermScore = 85 + (i % 10);
                }

                Attendance a = new Attendance();
                a.setStudentId(s.getId());
                a.setCourseCode("CS101");
                a.setSemester(4);
                a.setClassesConducted(classesConducted);
                a.setClassesAttended(classesAttended);
                attRepo.save(a);

                Assessment as = new Assessment();
                as.setStudentId(s.getId());
                as.setCourseCode("CS101");
                as.setSemester(4);
                as.setSubject("Midterm");
                as.setScore(BigDecimal.valueOf(midtermScore));
                as.setMaxScore(BigDecimal.valueOf(100));
                assRepo.save(as);

                for (int sem = 1; sem <= 3; sem++) {
                    SemesterHistory sh = new SemesterHistory();
                    sh.setStudentId(s.getId());
                    sh.setSemester(sem);
                    // Add slight trend based on semester
                    double gpa = baseGpa + (sem * 0.1); 
                    sh.setGpa(BigDecimal.valueOf(Math.min(4.0, gpa)));
                    sh.setCreditsEarned(15);
                    histRepo.save(sh);
                }
            }
        };
    }
}
