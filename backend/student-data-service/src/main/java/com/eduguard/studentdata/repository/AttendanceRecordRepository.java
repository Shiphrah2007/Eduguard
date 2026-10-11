package com.eduguard.studentdata.repository;
import com.eduguard.studentdata.entity.AttendanceRecord;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface AttendanceRecordRepository extends JpaRepository<AttendanceRecord, Long> {
    List<AttendanceRecord> findByStudentIdOrderByWeekNumberAsc(Long studentId);
}
