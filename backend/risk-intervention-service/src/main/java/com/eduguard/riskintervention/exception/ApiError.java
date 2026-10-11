package com.eduguard.riskintervention.exception;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data @AllArgsConstructor @NoArgsConstructor
public class ApiError {
    private String error;
    private int status;
}
