package com.eduguard.studentdata.entity;
import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "financial_records")
public class FinancialRecord {
    @Id
    @Column(name = "student_id")
    private Long studentId;
    
    @Column(name = "fee_delay_days")
    private Integer feeDelayDays;
    
    @Column(name = "has_financial_support")
    private Boolean hasFinancialSupport;
    
    @Column(name = "financial_notes")
    private String financialNotes;
}
