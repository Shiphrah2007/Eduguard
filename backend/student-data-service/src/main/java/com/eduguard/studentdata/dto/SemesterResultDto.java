package com.eduguard.studentdata.dto;
import lombok.Data;
import java.math.BigDecimal;
@Data
public class SemesterResultDto {
    private Integer semester;
    private String academicYear;
    private BigDecimal gpa;
}
