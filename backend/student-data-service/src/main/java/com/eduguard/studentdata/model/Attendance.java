package com.eduguard.studentdata.model;

import jakarta.persistence.*;

@Entity
@Table(name = "attendance")
public class Attendance {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "student_id")
    private Long studentId;

    @Column(name = "course_code", nullable = false)
    private String courseCode;

    @Column(name = "classes_conducted", nullable = false)
    private Integer classesConducted;

    @Column(name = "classes_attended", nullable = false)
    private Integer classesAttended;

    @Column(name = "semester", nullable = false)
    private Integer semester;

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public Long getStudentId() { return studentId; }
    public void setStudentId(Long studentId) { this.studentId = studentId; }
    public String getCourseCode() { return courseCode; }
    public void setCourseCode(String courseCode) { this.courseCode = courseCode; }
    public Integer getClassesConducted() { return classesConducted; }
    public void setClassesConducted(Integer classesConducted) { this.classesConducted = classesConducted; }
    public Integer getClassesAttended() { return classesAttended; }
    public void setClassesAttended(Integer classesAttended) { this.classesAttended = classesAttended; }
    public Integer getSemester() { return semester; }
    public void setSemester(Integer semester) { this.semester = semester; }
}
