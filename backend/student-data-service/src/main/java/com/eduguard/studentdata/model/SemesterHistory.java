package com.eduguard.studentdata.model;

import jakarta.persistence.*;
import java.math.BigDecimal;

@Entity
@Table(name = "semester_history")
public class SemesterHistory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "student_id")
    private Long studentId;

    @Column(name = "semester", nullable = false)
    private Integer semester;

    @Column(name = "gpa", nullable = false)
    private BigDecimal gpa;

    @Column(name = "credits_earned", nullable = false)
    private Integer creditsEarned;

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public Long getStudentId() { return studentId; }
    public void setStudentId(Long studentId) { this.studentId = studentId; }
    public Integer getSemester() { return semester; }
    public void setSemester(Integer semester) { this.semester = semester; }
    public BigDecimal getGpa() { return gpa; }
    public void setGpa(BigDecimal gpa) { this.gpa = gpa; }
    public Integer getCreditsEarned() { return creditsEarned; }
    public void setCreditsEarned(Integer creditsEarned) { this.creditsEarned = creditsEarned; }
}
