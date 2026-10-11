package com.eduguard.studentdata.entity;

import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data @EqualsAndHashCode
public class SemesterResultId implements Serializable {
    private Long studentId;
    private Integer semester;
}
