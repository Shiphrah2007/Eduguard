package com.eduguard.studentdata.repository;
import com.eduguard.studentdata.entity.FinancialRecord;
import org.springframework.data.jpa.repository.JpaRepository;
public interface FinancialRecordRepository extends JpaRepository<FinancialRecord, Long> {}
