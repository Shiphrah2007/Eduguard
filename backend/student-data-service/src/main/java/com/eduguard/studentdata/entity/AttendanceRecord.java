package com.eduguard.studentdata.entity;

import jakarta.persistence.*;
import lombok.Data;
import java.time.LocalDate;

@Data
@Entity
@Table(name = "attendance_records")
public class AttendanceRecord {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long recordId;
    
    private Long studentId;
    private LocalDate date;
    private Integer weekNumber;
    private Integer classesConducted;
    private Integer classesAttended;
}
