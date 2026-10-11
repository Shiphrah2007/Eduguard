package com.eduguard.studentdata.service;

import com.eduguard.studentdata.dto.*;
import com.eduguard.studentdata.entity.*;
import com.eduguard.studentdata.exception.ResourceNotFoundException;
import com.eduguard.studentdata.mapper.StudentMapper;
import com.eduguard.studentdata.repository.*;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class StudentServiceImpl implements StudentService {

    private final StudentRepository studentRepository;
    private final AttendanceRecordRepository attendanceRepo;
    private final AssessmentResultRepository assessmentRepo;
    private final SemesterResultRepository semesterRepo;
    private final FacultyStudentAssignmentRepository assignmentRepo;
    private final FinancialRecordRepository financialRepo;
    private final StudentMapper mapper;

    @Override
    public Page<StudentDto> getStudents(String department, Integer semester, String section, String search, Pageable pageable) {
        return studentRepository.findWithFilters(department, semester, section, search, pageable)
                .map(mapper::toDto);
    }

    @Override
    public StudentDto getStudentById(Long studentId) {
        return mapper.toDto(fetchStudent(studentId));
    }

    @Override
    public List<AttendanceRecordDto> getAttendance(Long studentId) {
        fetchStudent(studentId); // validate existence
        return attendanceRepo.findByStudentIdOrderByWeekNumberAsc(studentId)
                .stream().map(mapper::toDto).collect(Collectors.toList());
    }

    @Override
    public List<AssessmentResultDto> getAssessments(Long studentId) {
        fetchStudent(studentId);
        return assessmentRepo.findByStudentId(studentId)
                .stream().map(mapper::toDto).collect(Collectors.toList());
    }

    @Override
    public List<SemesterResultDto> getSemesterResults(Long studentId) {
        fetchStudent(studentId);
        return semesterRepo.findByStudentIdOrderBySemesterAsc(studentId)
                .stream().map(mapper::toDto).collect(Collectors.toList());
    }

    @Override
    public StudentHistoryDto getStudentHistory(Long studentId) {
        Student student = fetchStudent(studentId);
        
        List<AttendanceRecord> attendance = attendanceRepo.findByStudentIdOrderByWeekNumberAsc(studentId);
        List<AssessmentResult> assessments = assessmentRepo.findByStudentId(studentId);
        List<SemesterResult> semesters = semesterRepo.findByStudentIdOrderBySemesterAsc(studentId);
        
        StudentHistoryDto history = new StudentHistoryDto();
        history.setProfile(mapper.toDto(student));
        history.setAttendance(attendance.stream().map(mapper::toDto).collect(Collectors.toList()));
        history.setAssessments(assessments.stream().map(mapper::toDto).collect(Collectors.toList()));
        history.setSemesterResults(semesters.stream().map(mapper::toDto).collect(Collectors.toList()));
        
        financialRepo.findById(studentId).ifPresent(fin -> {
            FinancialRecordDto fDto = new FinancialRecordDto();
            fDto.setFeeDelayDays(fin.getFeeDelayDays());
            fDto.setHasFinancialSupport(fin.getHasFinancialSupport());
            history.setFinancialRecord(fDto);
        });
        
        long totalConducted = attendance.stream().mapToLong(AttendanceRecord::getClassesConducted).sum();
        long totalAttended = attendance.stream().mapToLong(AttendanceRecord::getClassesAttended).sum();
        
        if (totalConducted > 0) {
            double pct = ((double) totalAttended / totalConducted) * 100.0;
            history.setOverallAttendancePercentage(Math.round(pct * 100.0) / 100.0);
        } else {
            history.setOverallAttendancePercentage(0.0);
        }
        
        return history;
    }

    @Override
    public List<StudentDto> getStudentsByFaculty(Long facultyId) {
        return assignmentRepo.findStudentsByFacultyId(facultyId)
                .stream().map(mapper::toDto).collect(Collectors.toList());
    }

    private Student fetchStudent(Long studentId) {
        return studentRepository.findById(studentId)
                .orElseThrow(() -> new ResourceNotFoundException("Student not found with ID: " + studentId));
    }
}
