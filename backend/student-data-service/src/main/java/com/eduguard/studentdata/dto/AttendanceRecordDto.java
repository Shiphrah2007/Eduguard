package com.eduguard.studentdata.dto;
import lombok.Data;
import java.time.LocalDate;
@Data
public class AttendanceRecordDto {
    private LocalDate date;
    private Integer weekNumber;
    private Integer classesConducted;
    private Integer classesAttended;
    private Double percentage;
}
