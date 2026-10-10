package com.eduguard.riskintervention.repository;
import com.eduguard.riskintervention.model.RiskProfile;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.Optional;

@Repository
public interface RiskProfileRepository extends JpaRepository<RiskProfile, Long> {
    Optional<RiskProfile> findByStudentId(Long studentId);
}
