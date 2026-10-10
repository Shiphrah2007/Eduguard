package com.eduguard.studentdata.model;

import jakarta.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "student_faculty_assignments")
@IdClass(StudentFacultyAssignmentId.class)
public class StudentFacultyAssignment {
    
    @Id
    @Column(name = "student_id")
    private Long studentId;

    @Id
    @Column(name = "faculty_id")
    private Long facultyId;

    @Column(name = "assignment_role")
    private String assignmentRole;

    public Long getStudentId() { return studentId; }
    public void setStudentId(Long studentId) { this.studentId = studentId; }
    public Long getFacultyId() { return facultyId; }
    public void setFacultyId(Long facultyId) { this.facultyId = facultyId; }
    public String getAssignmentRole() { return assignmentRole; }
    public void setAssignmentRole(String assignmentRole) { this.assignmentRole = assignmentRole; }
}

class StudentFacultyAssignmentId implements Serializable {
    private Long studentId;
    private Long facultyId;
    
    // hashCode and equals omitted for brevity
}
