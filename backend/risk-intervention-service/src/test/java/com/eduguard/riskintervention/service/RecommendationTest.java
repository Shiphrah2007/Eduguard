package com.eduguard.riskintervention.service;
import com.eduguard.riskintervention.ml.FeatureExtractor;
import org.junit.jupiter.api.Test;
import java.util.List;
import static org.junit.jupiter.api.Assertions.*;

public class RecommendationTest {
    @Test
    public void testFeeDelayRule() {
        RecommendationService recs = new RecommendationService();
        FeatureExtractor.Features f = new FeatureExtractor.Features();
        f.feeDelayDays = 45;
        f.attendance = 95.0;
        f.gpa = 9.0;
        
        List<String> list = recs.generateRecommendations(f, "LOW");
        assertTrue(list.stream().anyMatch(r -> r.contains("Confidential financial-support review")));
    }
    
    @Test
    public void testIncompleteRule() {
        RecommendationService recs = new RecommendationService();
        FeatureExtractor.Features f = new FeatureExtractor.Features();
        List<String> list = recs.generateRecommendations(f, "INCOMPLETE");
        assertEquals(1, list.size());
        assertTrue(list.get(0).contains("Manual review required"));
    }
}
