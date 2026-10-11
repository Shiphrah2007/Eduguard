package com.eduguard.riskintervention.model;
import jakarta.persistence.*;
import lombok.Data;
import java.time.LocalDateTime;

@Data
@Entity
@Table(name = "risk_assessments")
public class RiskAssessment {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long assessmentId;
    
    @Column(nullable = false)
    private Long studentId;
    
    private LocalDateTime timestamp;
    private Double score;
    private String tier; // LOW, MEDIUM, HIGH, INCOMPLETE
    private String modelVersion;
    
    @Column(columnDefinition = "TEXT")
    private String factorsJson;
    
    @Column(columnDefinition = "TEXT")
    private String recommendationsJson;
}
