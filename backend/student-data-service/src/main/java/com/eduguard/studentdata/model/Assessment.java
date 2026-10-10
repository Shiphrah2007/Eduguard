package com.eduguard.studentdata.model;

import jakarta.persistence.*;
import java.math.BigDecimal;

@Entity
@Table(name = "assessments")
public class Assessment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "student_id")
    private Long studentId;

    @Column(name = "course_code", nullable = false)
    private String courseCode;

    @Column(name = "subject", nullable = false)
    private String subject;

    @Column(name = "score", nullable = false)
    private BigDecimal score;

    @Column(name = "max_score", nullable = false)
    private BigDecimal maxScore;

    @Column(name = "semester", nullable = false)
    private Integer semester;

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public Long getStudentId() { return studentId; }
    public void setStudentId(Long studentId) { this.studentId = studentId; }
    public String getCourseCode() { return courseCode; }
    public void setCourseCode(String courseCode) { this.courseCode = courseCode; }
    public String getSubject() { return subject; }
    public void setSubject(String subject) { this.subject = subject; }
    public BigDecimal getScore() { return score; }
    public void setScore(BigDecimal score) { this.score = score; }
    public BigDecimal getMaxScore() { return maxScore; }
    public void setMaxScore(BigDecimal maxScore) { this.maxScore = maxScore; }
    public Integer getSemester() { return semester; }
    public void setSemester(Integer semester) { this.semester = semester; }
}
