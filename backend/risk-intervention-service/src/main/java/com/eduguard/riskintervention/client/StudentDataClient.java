package com.eduguard.riskintervention.client;
import com.eduguard.riskintervention.client.dto.StudentHistoryDto;
import com.eduguard.riskintervention.client.dto.StudentDto;
import com.eduguard.riskintervention.client.dto.PaginatedStudentResponse;
import com.eduguard.riskintervention.exception.StudentDataClientException;
import com.eduguard.riskintervention.exception.ResourceNotFoundException;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;
import reactor.core.publisher.Mono;
import java.time.Duration;
import java.util.ArrayList;
import java.util.List;

@Service
public class StudentDataClient {
    private final WebClient webClient;

    public StudentDataClient(WebClient.Builder webClientBuilder, @Value("${student.data.service.url:http://localhost:8081}") String baseUrl) {
        this.webClient = webClientBuilder.baseUrl(baseUrl).build();
    }

    public StudentHistoryDto getStudentHistory(Long studentId) {
        return webClient.get()
                .uri("/api/students/{id}/history", studentId)
                .retrieve()
                .onStatus(status -> status.is4xxClientError(), response -> {
                    if (response.statusCode().value() == 404) {
                        return Mono.error(new ResourceNotFoundException("Student not found in Student Data Service"));
                    }
                    return Mono.error(new StudentDataClientException("Client error when fetching student history"));
                })
                .onStatus(status -> status.is5xxServerError(), response -> Mono.error(new StudentDataClientException("Upstream server error")))
                .bodyToMono(StudentHistoryDto.class)
                .timeout(Duration.ofSeconds(3))
                .retry(2)
                .onErrorMap(e -> !(e instanceof ResourceNotFoundException), e -> new StudentDataClientException("Failed to fetch student data: " + e.getMessage()))
                .block();
    }
    
    public List<StudentDto> getAllStudents() {
        List<StudentDto> allStudents = new ArrayList<>();
        int page = 0;
        boolean hasMore = true;
        while (hasMore) {
            final int currentPage = page;
            PaginatedStudentResponse response = webClient.get()
                    .uri(uriBuilder -> uriBuilder
                        .path("/api/students")
                        .queryParam("page", currentPage)
                        .queryParam("size", 50)
                        .build())
                    .retrieve()
                    .onStatus(status -> status.isError(), r -> Mono.error(new StudentDataClientException("Upstream error fetching students")))
                    .bodyToMono(PaginatedStudentResponse.class)
                    .timeout(Duration.ofSeconds(5))
                    .retry(2)
                    .block();
            
            if (response != null && response.getContent() != null) {
                allStudents.addAll(response.getContent());
                hasMore = !response.isLast();
                page++;
            } else {
                hasMore = false;
            }
        }
        return allStudents;
    }
}
