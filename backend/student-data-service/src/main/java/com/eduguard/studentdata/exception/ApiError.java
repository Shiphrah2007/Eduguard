package com.eduguard.studentdata.exception;
import lombok.AllArgsConstructor;
import lombok.Data;
@Data @AllArgsConstructor
public class ApiError {
    private String error;
    private int status;
}
