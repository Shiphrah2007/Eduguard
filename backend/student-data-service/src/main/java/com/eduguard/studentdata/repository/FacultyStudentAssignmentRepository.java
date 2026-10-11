package com.eduguard.studentdata.repository;
import com.eduguard.studentdata.entity.FacultyStudentAssignment;
import com.eduguard.studentdata.entity.FacultyStudentAssignmentId;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import java.util.List;
import com.eduguard.studentdata.entity.Student;

public interface FacultyStudentAssignmentRepository extends JpaRepository<FacultyStudentAssignment, FacultyStudentAssignmentId> {
    @Query("SELECT a.student FROM FacultyStudentAssignment a WHERE a.facultyId = :facultyId")
    List<Student> findStudentsByFacultyId(@Param("facultyId") Long facultyId);
}
