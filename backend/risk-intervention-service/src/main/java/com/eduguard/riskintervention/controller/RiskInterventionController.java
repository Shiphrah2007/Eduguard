package com.eduguard.riskintervention.controller;

import com.eduguard.riskintervention.model.*;
import com.eduguard.riskintervention.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.List;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*")
public class RiskInterventionController {

    @Autowired
    private RiskProfileRepository riskProfileRepository;

    @Autowired
    private InterventionRepository interventionRepository;

    @GetMapping("/students/{id}/risk")
    public ResponseEntity<RiskProfile> getStudentRisk(@PathVariable Long id) {
        return riskProfileRepository.findByStudentId(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @PostMapping("/students/{id}/risk")
    public ResponseEntity<RiskProfile> updateStudentRisk(@PathVariable Long id, @RequestBody RiskProfile riskProfile) {
        riskProfile.setStudentId(id);
        riskProfile.setLastAssessed(LocalDateTime.now());
        
        RiskProfile existing = riskProfileRepository.findByStudentId(id).orElse(null);
        if (existing != null) {
            existing.setRiskLevel(riskProfile.getRiskLevel());
            existing.setNotes(riskProfile.getNotes());
            existing.setLastAssessed(LocalDateTime.now());
            return ResponseEntity.ok(riskProfileRepository.save(existing));
        }
        
        return ResponseEntity.ok(riskProfileRepository.save(riskProfile));
    }

    @GetMapping("/interventions")
    public List<Intervention> getAllInterventions() {
        return interventionRepository.findAll();
    }

    @GetMapping("/students/{id}/interventions")
    public List<Intervention> getStudentInterventions(@PathVariable Long id) {
        return interventionRepository.findByStudentId(id);
    }

    @PostMapping("/interventions")
    public Intervention createIntervention(@RequestBody Intervention intervention) {
        return interventionRepository.save(intervention);
    }
}
