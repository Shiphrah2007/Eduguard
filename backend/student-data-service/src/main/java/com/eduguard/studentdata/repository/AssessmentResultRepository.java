package com.eduguard.studentdata.repository;
import com.eduguard.studentdata.entity.AssessmentResult;
import com.eduguard.studentdata.entity.AssessmentResultId;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface AssessmentResultRepository extends JpaRepository<AssessmentResult, AssessmentResultId> {
    List<AssessmentResult> findByStudentId(Long studentId);
}
