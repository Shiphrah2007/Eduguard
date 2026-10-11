package com.eduguard.riskintervention.client.dto;
import lombok.Data;
@Data
public class StudentDto {
    private Long studentId;
    private String regNo;
    private String name;
    private String department;
    private Integer currentSemester;
}
