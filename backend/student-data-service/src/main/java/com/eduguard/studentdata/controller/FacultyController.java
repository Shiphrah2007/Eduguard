package com.eduguard.studentdata.controller;

import com.eduguard.studentdata.dto.StudentDto;
import com.eduguard.studentdata.service.StudentService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/faculty")
@RequiredArgsConstructor
public class FacultyController {

    private final StudentService studentService;

    @GetMapping("/{id}/students")
    public ResponseEntity<List<StudentDto>> getAssignedStudents(@PathVariable Long id) {
        return ResponseEntity.ok(studentService.getStudentsByFaculty(id));
    }
}
