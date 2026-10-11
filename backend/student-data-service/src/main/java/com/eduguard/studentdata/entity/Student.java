package com.eduguard.studentdata.entity;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "students")
public class Student {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long studentId;
    
    @Column(unique = true, nullable = false)
    private String regNo;
    
    private String name;
    private String department;
    private String section;
    private Integer currentSemester;
    private Integer enrollmentYear;
    private Boolean isActive;
}
