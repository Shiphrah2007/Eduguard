package com.eduguard.riskintervention.model;

import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "risk_profiles")
public class RiskProfile {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "student_id", nullable = false)
    private Long studentId;

    @Column(name = "risk_level", nullable = false)
    private String riskLevel;

    @Column(name = "risk_score")
    private Integer riskScore;

    @Column(name = "risk_factors", columnDefinition = "TEXT")
    private String riskFactors;

    @Column(name = "support_actions", columnDefinition = "TEXT")
    private String supportActions;

    @Column(name = "last_assessed")
    private LocalDateTime lastAssessed;

    @Column(name = "notes", columnDefinition = "TEXT")
    private String notes;

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public Long getStudentId() { return studentId; }
    public void setStudentId(Long studentId) { this.studentId = studentId; }
    public String getRiskLevel() { return riskLevel; }
    public void setRiskLevel(String riskLevel) { this.riskLevel = riskLevel; }
    public Integer getRiskScore() { return riskScore; }
    public void setRiskScore(Integer riskScore) { this.riskScore = riskScore; }
    public String getRiskFactors() { return riskFactors; }
    public void setRiskFactors(String riskFactors) { this.riskFactors = riskFactors; }
    public String getSupportActions() { return supportActions; }
    public void setSupportActions(String supportActions) { this.supportActions = supportActions; }
    public LocalDateTime getLastAssessed() { return lastAssessed; }
    public void setLastAssessed(LocalDateTime lastAssessed) { this.lastAssessed = lastAssessed; }
    public String getNotes() { return notes; }
    public void setNotes(String notes) { this.notes = notes; }
}
