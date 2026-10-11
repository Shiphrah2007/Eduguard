package com.eduguard.studentdata.entity;

import jakarta.persistence.*;
import lombok.Data;
import java.time.LocalDate;
import java.math.BigDecimal;

@Data
@Entity
@Table(name = "assessments")
public class Assessment {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long assessmentId;
    private String name;
    private String subject;
    private Integer semester;
    private LocalDate assessmentDate;
    private BigDecimal maxMarks;
}
