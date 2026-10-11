package com.eduguard.studentdata.repository;
import com.eduguard.studentdata.entity.SemesterResult;
import com.eduguard.studentdata.entity.SemesterResultId;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface SemesterResultRepository extends JpaRepository<SemesterResult, SemesterResultId> {
    List<SemesterResult> findByStudentIdOrderBySemesterAsc(Long studentId);
}
