package com.eduguard.riskintervention;

import com.eduguard.riskintervention.model.*;
import com.eduguard.riskintervention.repository.*;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Configuration
public class SeedDataConfig {

    @Bean
    CommandLineRunner initDatabase(RiskProfileRepository riskRepo, InterventionRepository interventionRepo) {
        return args -> {
            if (riskRepo.count() > 0) return;

            // Seed Risk Profiles for student ids 1-20 matching Student Data Service
            // High Risk (5): 0-4
            // Medium Risk (7): 5-11
            // Low Risk (8): 12-19

            for (int i = 0; i < 20; i++) {
                RiskProfile r = new RiskProfile();
                r.setStudentId((long) (i + 1));
                r.setLastAssessed(LocalDateTime.now());
                
                int score;
                if (i < 5) {
                    score = 75;
                    r.setRiskLevel("High");
                    r.setRiskFactors("Low attendance (< 60%);Declining GPA;Poor assessment scores");
                    r.setSupportActions("Mandatory counseling;Remedial classes;Parent meeting");
                } else if (i < 12) {
                    score = 45;
                    r.setRiskLevel("Medium");
                    r.setRiskFactors("Borderline attendance (~75%);Average performance");
                    r.setSupportActions("Peer tutoring;Academic advising");
                } else {
                    score = 15;
                    r.setRiskLevel("Low");
                    r.setRiskFactors("None");
                    r.setSupportActions("Maintain current trajectory");
                }
                
                r.setRiskScore(score);
                r.setNotes(r.getRiskLevel() + " risk assessment completed. Score: " + score + "%");
                riskRepo.save(r);

                // Seed Interventions for high/medium risk
                if (!r.getRiskLevel().equals("Low")) {
                    Intervention intervention = new Intervention();
                    intervention.setStudentId((long) (i + 1));
                    intervention.setFacultyId(i % 2 == 0 ? 1L : 2L);
                    intervention.setStatus("Pending");
                    intervention.setType("Academic Counseling");
                    intervention.setDateInitiated(LocalDate.now().minusDays(5));
                    intervention.setFollowUpDate(LocalDate.now().plusDays(2));
                    intervention.setNotes("Scheduled meeting to discuss recent performance.");
                    interventionRepo.save(intervention);
                }
            }
        };
    }
}
