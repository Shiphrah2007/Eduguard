package com.eduguard.riskintervention.client.dto;
import lombok.Data;
import java.util.List;
@Data
public class StudentHistoryDto {
    private StudentDto profile;
    private Double overallAttendancePercentage;
    private List<AttendanceRecordDto> attendance;
    private List<AssessmentResultDto> assessments;
    private List<SemesterResultDto> semesterResults;
    private FinancialRecordDto financialRecord;
}
