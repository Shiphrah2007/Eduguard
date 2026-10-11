package com.eduguard.studentdata.entity;

import jakarta.persistence.*;
import lombok.Data;
import java.math.BigDecimal;

@Data
@Entity
@Table(name = "assessment_results")
@IdClass(AssessmentResultId.class)
public class AssessmentResult {
    @Id @Column(name = "student_id")
    private Long studentId;
    
    @Id @Column(name = "assessment_id")
    private Long assessmentId;
    
    private BigDecimal marksObtained;
    
    @ManyToOne(fetch = FetchType.EAGER) // Eager fetch to avoid N+1 when retrieving results
    @JoinColumn(name = "assessment_id", insertable = false, updatable = false)
    private Assessment assessment;
}
