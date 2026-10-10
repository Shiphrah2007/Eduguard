package com.eduguard.studentdata.repository;
import com.eduguard.studentdata.model.SemesterHistory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface SemesterHistoryRepository extends JpaRepository<SemesterHistory, Long> {
    List<SemesterHistory> findByStudentId(Long studentId);
}
