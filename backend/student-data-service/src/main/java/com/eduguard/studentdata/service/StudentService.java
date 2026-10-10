package com.eduguard.studentdata.service;

import com.eduguard.studentdata.model.*;
import com.eduguard.studentdata.repository.*;
import com.eduguard.studentdata.exception.ResourceNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class StudentService {

    @Autowired private StudentRepository studentRepository;
    @Autowired private AttendanceRepository attendanceRepository;
    @Autowired private AssessmentRepository assessmentRepository;
    @Autowired private SemesterHistoryRepository semesterHistoryRepository;
    @Autowired private StudentFacultyAssignmentRepository assignmentRepository;

    public org.springframework.data.domain.Page<Student> getStudents(String department, Integer semester, String section, String search, int page, int size) {
        org.springframework.data.jpa.domain.Specification<Student> spec = (root, query, cb) -> {
            java.util.List<jakarta.persistence.criteria.Predicate> predicates = new java.util.ArrayList<>();
            if (department != null && !department.isEmpty()) {
                predicates.add(cb.equal(root.get("department"), department));
            }
            if (semester != null) {
                predicates.add(cb.equal(root.get("currentSemester"), semester));
            }
            if (section != null && !section.isEmpty()) {
                predicates.add(cb.equal(root.get("section"), section));
            }
            if (search != null && !search.isEmpty()) {
                String likePattern = "%" + search.toLowerCase() + "%";
                predicates.add(cb.or(
                    cb.like(cb.lower(root.get("firstName")), likePattern),
                    cb.like(cb.lower(root.get("lastName")), likePattern),
                    cb.like(cb.lower(root.get("studentCode")), likePattern)
                ));
            }
            return cb.and(predicates.toArray(new jakarta.persistence.criteria.Predicate[0]));
        };
        return studentRepository.findAll(spec, org.springframework.data.domain.PageRequest.of(page, size));
    }

    public Student getStudentById(Long id) {
        return studentRepository.findById(id)
            .orElseThrow(() -> new ResourceNotFoundException("Student not found with id: " + id));
    }

    public List<Attendance> getStudentAttendance(Long id) {
        return attendanceRepository.findByStudentId(id);
    }

    public Double calculateOverallAttendance(Long id) {
        List<Attendance> attendances = attendanceRepository.findByStudentId(id);
        if (attendances.isEmpty()) return 0.0;
        int totalConducted = attendances.stream().mapToInt(Attendance::getClassesConducted).sum();
        int totalAttended = attendances.stream().mapToInt(Attendance::getClassesAttended).sum();
        return totalConducted == 0 ? 0.0 : ((double) totalAttended / totalConducted) * 100.0;
    }

    public List<Assessment> getStudentAssessments(Long id) {
        return assessmentRepository.findByStudentId(id);
    }

    public List<SemesterHistory> getStudentHistory(Long id) {
        return semesterHistoryRepository.findByStudentId(id);
    }

    public List<Student> getStudentsByFaculty(Long facultyId) {
        List<StudentFacultyAssignment> assignments = assignmentRepository.findByFacultyId(facultyId);
        return assignments.stream()
            .map(a -> studentRepository.findById(a.getStudentId()).orElse(null))
            .filter(s -> s != null)
            .collect(Collectors.toList());
    }
}
