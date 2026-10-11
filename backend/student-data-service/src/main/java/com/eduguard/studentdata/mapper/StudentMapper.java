package com.eduguard.studentdata.mapper;
import com.eduguard.studentdata.dto.*;
import com.eduguard.studentdata.entity.*;
import org.springframework.stereotype.Component;

@Component
public class StudentMapper {
    public StudentDto toDto(Student student) {
        StudentDto dto = new StudentDto();
        dto.setStudentId(student.getStudentId());
        dto.setRegNo(student.getRegNo());
        dto.setName(student.getName());
        dto.setDepartment(student.getDepartment());
        dto.setSection(student.getSection());
        dto.setCurrentSemester(student.getCurrentSemester());
        return dto;
    }
    
    public AttendanceRecordDto toDto(AttendanceRecord record) {
        AttendanceRecordDto dto = new AttendanceRecordDto();
        dto.setDate(record.getDate());
        dto.setWeekNumber(record.getWeekNumber());
        dto.setClassesConducted(record.getClassesConducted());
        dto.setClassesAttended(record.getClassesAttended());
        if (record.getClassesConducted() != null && record.getClassesConducted() > 0) {
            double pct = ((double) record.getClassesAttended() / record.getClassesConducted()) * 100.0;
            dto.setPercentage(Math.round(pct * 100.0) / 100.0);
        } else {
            dto.setPercentage(0.0);
        }
        return dto;
    }
    
    public AssessmentResultDto toDto(AssessmentResult result) {
        AssessmentResultDto dto = new AssessmentResultDto();
        dto.setMarksObtained(result.getMarksObtained());
        if(result.getAssessment() != null) {
            dto.setAssessmentName(result.getAssessment().getName());
            dto.setSubject(result.getAssessment().getSubject());
            dto.setSemester(result.getAssessment().getSemester());
            dto.setAssessmentDate(result.getAssessment().getAssessmentDate());
            dto.setMaxMarks(result.getAssessment().getMaxMarks());
        }
        return dto;
    }
    
    public SemesterResultDto toDto(SemesterResult result) {
        SemesterResultDto dto = new SemesterResultDto();
        dto.setSemester(result.getSemester());
        dto.setAcademicYear(result.getAcademicYear());
        dto.setGpa(result.getGpa());
        return dto;
    }
}
