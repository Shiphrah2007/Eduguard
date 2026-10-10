package com.eduguard.studentdata.controller;

import com.eduguard.studentdata.model.*;
import com.eduguard.studentdata.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*")
public class StudentController {

    @Autowired
    private StudentService studentService;

    @GetMapping("/students")
    public ResponseEntity<org.springframework.data.domain.Page<Student>> getAllStudents(
            @RequestParam(required = false) String department,
            @RequestParam(required = false) Integer semester,
            @RequestParam(required = false) String section,
            @RequestParam(required = false) String search,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "10") int size) {
        return ResponseEntity.ok(studentService.getStudents(department, semester, section, search, page, size));
    }

    @GetMapping("/students/{id}")
    public ResponseEntity<Student> getStudentById(@PathVariable Long id) {
        return ResponseEntity.ok(studentService.getStudentById(id));
    }

    @GetMapping("/students/{id}/attendance")
    public ResponseEntity<List<Attendance>> getStudentAttendance(@PathVariable Long id) {
        studentService.getStudentById(id); // Check existence
        return ResponseEntity.ok(studentService.getStudentAttendance(id));
    }

    @GetMapping("/students/{id}/attendance/overall")
    public ResponseEntity<Double> getOverallAttendance(@PathVariable Long id) {
        studentService.getStudentById(id);
        return ResponseEntity.ok(studentService.calculateOverallAttendance(id));
    }

    @GetMapping("/students/{id}/assessments")
    public ResponseEntity<List<Assessment>> getStudentAssessments(@PathVariable Long id) {
        studentService.getStudentById(id);
        return ResponseEntity.ok(studentService.getStudentAssessments(id));
    }

    @GetMapping("/students/{id}/history")
    public ResponseEntity<List<SemesterHistory>> getStudentHistory(@PathVariable Long id) {
        studentService.getStudentById(id);
        return ResponseEntity.ok(studentService.getStudentHistory(id));
    }

    @GetMapping("/students/{id}/semester-results")
    public ResponseEntity<List<SemesterHistory>> getStudentSemesterResults(@PathVariable Long id) {
        studentService.getStudentById(id);
        return ResponseEntity.ok(studentService.getStudentHistory(id));
    }

    @GetMapping("/faculty/{id}/students")
    public ResponseEntity<List<Student>> getStudentsByFaculty(@PathVariable Long id) {
        return ResponseEntity.ok(studentService.getStudentsByFaculty(id));
    }
}
