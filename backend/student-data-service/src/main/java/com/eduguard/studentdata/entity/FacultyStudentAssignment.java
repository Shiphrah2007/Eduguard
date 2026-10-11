package com.eduguard.studentdata.entity;

import jakarta.persistence.*;
import lombok.Data;
import java.time.LocalDate;

@Data
@Entity
@Table(name = "faculty_student_assignments")
@IdClass(FacultyStudentAssignmentId.class)
public class FacultyStudentAssignment {
    @Id @Column(name = "faculty_id")
    private Long facultyId;
    
    @Id @Column(name = "student_id")
    private Long studentId;
    
    private LocalDate assignedDate;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "student_id", insertable = false, updatable = false)
    private Student student;
}
