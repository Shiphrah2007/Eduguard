package com.eduguard.riskintervention.model;

import jakarta.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "interventions")
public class Intervention {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "student_id", nullable = false)
    private Long studentId;

    @Column(name = "faculty_id")
    private Long facultyId;

    @Column(name = "type")
    private String type;

    @Column(name = "status")
    private String status;

    @Column(name = "date_initiated")
    private LocalDate dateInitiated;

    @Column(name = "follow_up_date")
    private LocalDate followUpDate;

    @Column(name = "notes", columnDefinition = "TEXT")
    private String notes;

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public Long getStudentId() { return studentId; }
    public void setStudentId(Long studentId) { this.studentId = studentId; }
    public Long getFacultyId() { return facultyId; }
    public void setFacultyId(Long facultyId) { this.facultyId = facultyId; }
    public String getType() { return type; }
    public void setType(String type) { this.type = type; }
    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
    public LocalDate getDateInitiated() { return dateInitiated; }
    public void setDateInitiated(LocalDate dateInitiated) { this.dateInitiated = dateInitiated; }
    public LocalDate getFollowUpDate() { return followUpDate; }
    public void setFollowUpDate(LocalDate followUpDate) { this.followUpDate = followUpDate; }
    public String getNotes() { return notes; }
    public void setNotes(String notes) { this.notes = notes; }
}
