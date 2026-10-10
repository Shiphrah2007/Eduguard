package com.eduguard.studentdata;

import com.eduguard.studentdata.model.Attendance;
import com.eduguard.studentdata.repository.AttendanceRepository;
import com.eduguard.studentdata.service.StudentService;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.Arrays;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
public class StudentServiceTest {

    @Mock
    private AttendanceRepository attendanceRepository;

    @InjectMocks
    private StudentService studentService;

    @Test
    public void testCalculateOverallAttendance() {
        Attendance a1 = new Attendance();
        a1.setClassesConducted(20);
        a1.setClassesAttended(18);

        Attendance a2 = new Attendance();
        a2.setClassesConducted(30);
        a2.setClassesAttended(20);

        when(attendanceRepository.findByStudentId(1L)).thenReturn(Arrays.asList(a1, a2));

        Double overall = studentService.calculateOverallAttendance(1L);
        // (18+20) / (20+30) = 38 / 50 = 0.76 * 100 = 76.0
        assertEquals(76.0, overall);
    }
    
    @Test
    public void testCalculateOverallAttendanceEmpty() {
        when(attendanceRepository.findByStudentId(1L)).thenReturn(List.of());
        Double overall = studentService.calculateOverallAttendance(1L);
        assertEquals(0.0, overall);
    }
}
