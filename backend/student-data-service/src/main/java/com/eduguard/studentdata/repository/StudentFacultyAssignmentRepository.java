package com.eduguard.studentdata.repository;
import com.eduguard.studentdata.model.StudentFacultyAssignment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface StudentFacultyAssignmentRepository extends JpaRepository<StudentFacultyAssignment, Long> {
    List<StudentFacultyAssignment> findByFacultyId(Long facultyId);
}
