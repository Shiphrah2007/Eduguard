package com.eduguard.riskintervention.ml;
import com.eduguard.riskintervention.client.dto.StudentHistoryDto;
import org.springframework.stereotype.Component;

@Component
public class FeatureExtractor {
    public static class Features {
        public double attendance;
        public double gpa;
        public boolean isIncomplete;
        public boolean gpaImputed;
        public int feeDelayDays; // Outside ML model, just for rules
    }

    public Features extract(StudentHistoryDto dto) {
        Features f = new Features();
        
        // Attendance logic
        if (dto.getOverallAttendancePercentage() == null || dto.getOverallAttendancePercentage() == 0.0) {
            f.isIncomplete = true;
            f.attendance = 0;
        } else {
            f.attendance = dto.getOverallAttendancePercentage();
        }

        // GPA logic
        if (dto.getSemesterResults() == null || dto.getSemesterResults().isEmpty()) {
            f.gpa = 5.0; // Mean imputation
            f.gpaImputed = true;
        } else {
            double sum = 0;
            for(var r : dto.getSemesterResults()) sum += r.getGpa();
            f.gpa = sum / dto.getSemesterResults().size();
        }
        
        // Financial logic
        if (dto.getFinancialRecord() != null && dto.getFinancialRecord().getFeeDelayDays() != null) {
            f.feeDelayDays = dto.getFinancialRecord().getFeeDelayDays();
        } else {
            f.feeDelayDays = 0;
        }
        
        return f;
    }
}
