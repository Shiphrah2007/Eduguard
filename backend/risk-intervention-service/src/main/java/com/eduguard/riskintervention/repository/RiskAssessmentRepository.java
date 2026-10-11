package com.eduguard.riskintervention.repository;
import com.eduguard.riskintervention.model.RiskAssessment;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.Optional;

public interface RiskAssessmentRepository extends JpaRepository<RiskAssessment, Long> {
    Optional<RiskAssessment> findTopByStudentIdOrderByTimestampDesc(Long studentId);
}
