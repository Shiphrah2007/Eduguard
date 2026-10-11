package com.eduguard.riskintervention.service;
import com.eduguard.riskintervention.client.StudentDataClient;
import com.eduguard.riskintervention.client.dto.StudentHistoryDto;
import com.eduguard.riskintervention.client.dto.StudentDto;
import com.eduguard.riskintervention.controller.dto.RiskAssessmentDto;
import com.eduguard.riskintervention.ml.FeatureExtractor;
import com.eduguard.riskintervention.ml.WekaModelService;
import com.eduguard.riskintervention.model.RiskAssessment;
import com.eduguard.riskintervention.repository.RiskAssessmentRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import java.time.LocalDateTime;
import java.util.List;
import java.util.ArrayList;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class RiskAssessmentService {
    private final StudentDataClient client;
    private final WekaModelService mlService;
    private final FeatureExtractor extractor;
    private final RecommendationService recommendationService;
    private final RiskAssessmentRepository repository;
    private final ObjectMapper mapper = new ObjectMapper();

    @Transactional
    public RiskAssessmentDto assessStudent(Long studentId) throws Exception {
        StudentHistoryDto history = client.getStudentHistory(studentId);
        FeatureExtractor.Features features = extractor.extract(history);
        WekaModelService.PredictionResult prediction = mlService.predict(features);
        List<String> recs = recommendationService.generateRecommendations(features, prediction.tier);
        
        RiskAssessment assessment = new RiskAssessment();
        assessment.setStudentId(studentId);
        assessment.setTimestamp(LocalDateTime.now());
        assessment.setScore(prediction.score);
        assessment.setTier(prediction.tier);
        assessment.setModelVersion(mlService.MODEL_VERSION);
        assessment.setFactorsJson(prediction.explanation);
        assessment.setRecommendationsJson(mapper.writeValueAsString(recs));
        
        repository.save(assessment);
        return toDto(assessment, recs);
    }
    
    @Transactional
    public List<RiskAssessmentDto> assessCohort(List<Long> studentIds) throws Exception {
        List<Long> idsToAssess = studentIds;
        if (idsToAssess == null || idsToAssess.isEmpty()) {
            idsToAssess = client.getAllStudents().stream()
                .map(StudentDto::getStudentId)
                .toList();
        }
        
        List<RiskAssessmentDto> results = new ArrayList<>();
        for (Long id : idsToAssess) {
            try {
                results.add(assessStudent(id));
            } catch (Exception e) {
                // Log and continue for cohort
            }
        }
        return results;
    }

    public RiskAssessmentDto getLatestAssessment(Long studentId) {
        return repository.findTopByStudentIdOrderByTimestampDesc(studentId)
                .map(a -> {
                    try {
                        return toDto(a, mapper.readValue(a.getRecommendationsJson(), List.class));
                    } catch (Exception e) { return null; }
                }).orElseThrow(() -> new RuntimeException("Assessment not found"));
    }

    private RiskAssessmentDto toDto(RiskAssessment entity, List<String> recs) {
        RiskAssessmentDto dto = new RiskAssessmentDto();
        dto.setStudentId(entity.getStudentId());
        dto.setScore(entity.getScore());
        dto.setTier(entity.getTier());
        dto.setFactors(entity.getFactorsJson());
        dto.setRecommendations(recs);
        dto.setTimestamp(entity.getTimestamp());
        dto.setModelVersion(entity.getModelVersion());
        return dto;
    }
}
