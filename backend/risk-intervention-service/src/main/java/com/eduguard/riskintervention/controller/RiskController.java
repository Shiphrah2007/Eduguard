package com.eduguard.riskintervention.controller;
import com.eduguard.riskintervention.controller.dto.RiskAssessmentDto;
import com.eduguard.riskintervention.service.RiskAssessmentService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/risk")
@RequiredArgsConstructor
public class RiskController {
    private final RiskAssessmentService service;

    @PostMapping("/assess/{studentId}")
    public ResponseEntity<RiskAssessmentDto> assessStudent(@PathVariable Long studentId) throws Exception {
        return ResponseEntity.ok(service.assessStudent(studentId));
    }
    
    @PostMapping("/assess-cohort")
    public ResponseEntity<List<RiskAssessmentDto>> assessCohort(@RequestBody(required = false) List<Long> studentIds) throws Exception {
        return ResponseEntity.ok(service.assessCohort(studentIds));
    }

    @GetMapping("/students/{studentId}")
    public ResponseEntity<RiskAssessmentDto> getAssessment(@PathVariable Long studentId) {
        return ResponseEntity.ok(service.getLatestAssessment(studentId));
    }
    
    @GetMapping("/students/{studentId}/factors")
    public ResponseEntity<Map<String, String>> getFactors(@PathVariable Long studentId) {
        RiskAssessmentDto dto = service.getLatestAssessment(studentId);
        return ResponseEntity.ok(Map.of("factors", dto.getFactors()));
    }
    
    @GetMapping("/students/{studentId}/recommendations")
    public ResponseEntity<List<String>> getRecommendations(@PathVariable Long studentId) {
        return ResponseEntity.ok(service.getLatestAssessment(studentId).getRecommendations());
    }
}
