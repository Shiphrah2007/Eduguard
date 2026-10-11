package com.eduguard.studentdata.dto;
import lombok.Data;
import java.time.LocalDate;
import java.math.BigDecimal;
@Data
public class AssessmentResultDto {
    private String assessmentName;
    private String subject;
    private Integer semester;
    private LocalDate assessmentDate;
    private BigDecimal marksObtained;
    private BigDecimal maxMarks;
}
