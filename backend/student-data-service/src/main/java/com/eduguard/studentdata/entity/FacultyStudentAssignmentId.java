package com.eduguard.studentdata.entity;

import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data @EqualsAndHashCode
public class FacultyStudentAssignmentId implements Serializable {
    private Long facultyId;
    private Long studentId;
}
