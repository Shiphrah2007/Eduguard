package com.eduguard.studentdata.controller;

import com.eduguard.studentdata.dto.StudentDto;
import com.eduguard.studentdata.exception.ResourceNotFoundException;
import com.eduguard.studentdata.service.StudentService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.web.servlet.MockMvc;

import static org.mockito.ArgumentMatchers.anyLong;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@WebMvcTest(controllers = StudentController.class)
@AutoConfigureMockMvc(addFilters = false) // Bypass security filters for unit test
public class StudentControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private StudentService studentService;

    @Test
    public void testGetStudentById_Success() throws Exception {
        StudentDto mockStudent = new StudentDto();
        mockStudent.setStudentId(1L);
        mockStudent.setName("John Doe");

        when(studentService.getStudentById(1L)).thenReturn(mockStudent);

        mockMvc.perform(get("/api/students/1"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.name").value("John Doe"));
    }

    @Test
    public void testGetStudentById_NotFound() throws Exception {
        when(studentService.getStudentById(anyLong()))
                .thenThrow(new ResourceNotFoundException("Student not found"));

        mockMvc.perform(get("/api/students/999"))
                .andExpect(status().isNotFound())
                .andExpect(jsonPath("$.error").value("Student not found"));
    }
}
