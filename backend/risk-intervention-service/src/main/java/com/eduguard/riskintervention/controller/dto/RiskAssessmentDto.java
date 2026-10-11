package com.eduguard.riskintervention.controller.dto;
import lombok.Data;
import java.time.LocalDateTime;
import java.util.List;

@Data
public class RiskAssessmentDto {
    private Long studentId;
    private Double score;
    private String tier;
    private String factors;
    private List<String> recommendations;
    private LocalDateTime timestamp;
    private String modelVersion;
}
