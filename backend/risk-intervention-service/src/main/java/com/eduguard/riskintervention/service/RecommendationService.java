package com.eduguard.riskintervention.service;
import com.eduguard.riskintervention.ml.FeatureExtractor;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.List;

@Service
public class RecommendationService {
    public List<String> generateRecommendations(FeatureExtractor.Features f, String tier) {
        List<String> recs = new ArrayList<>();
        if ("INCOMPLETE".equals(tier)) {
            recs.add("Manual review required due to missing critical data (attendance).");
            return recs;
        }
        if (f.attendance < 75.0) {
            recs.add("Attendance follow-up strongly advised; falls below 75% threshold.");
        }
        if (f.gpa < 6.0) {
            recs.add("Academic recovery plan suggested due to low average GPA.");
        }
        if ("HIGH".equals(tier)) {
            recs.add("Schedule direct mentoring session with student immediately.");
        }
        
        // Financial logic (outside ML)
        if (f.feeDelayDays > 30) {
            recs.add("Confidential financial-support review recommended due to fee delays.");
        }
        
        if ("LOW".equals(tier) && recs.isEmpty()) {
            recs.add("No immediate intervention needed. Continue standard monitoring.");
        }
        return recs;
    }
}
