package com.eduguard.studentdata.entity;

import jakarta.persistence.*;
import lombok.Data;
import java.math.BigDecimal;

@Data
@Entity
@Table(name = "semester_results")
@IdClass(SemesterResultId.class)
public class SemesterResult {
    @Id @Column(name = "student_id")
    private Long studentId;
    
    @Id @Column(name = "semester")
    private Integer semester;
    
    private String academicYear;
    private BigDecimal gpa;
}
