package com.eduguard.riskintervention.client.dto;
import lombok.Data;
import java.util.List;
@Data
public class PaginatedStudentResponse {
    private List<StudentDto> content;
    private boolean last;
    private int totalPages;
}
