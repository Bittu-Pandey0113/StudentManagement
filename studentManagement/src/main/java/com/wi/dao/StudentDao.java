package com.wi.dao;

import com.wi.dto.StudentDto;
import com.wi.entity.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.criteria.CriteriaBuilder;
import java.util.List;
import java.util.Optional;

@Repository
@Transactional
public interface StudentDao extends JpaRepository<Student,Integer> {
    @Override
    public List<Student> findAll();

    @Override
    public Optional<Student>findById(Integer integer);

    @Override
    public  Student save(Student entity);

    @Override
    public void deleteById(Integer integer);
    @Query("update Student s set s.studentName=:name,s.email=:email,"+"s.phoneNumber=:ph where s.rollNo=:id")
    @Transactional
    @Modifying
    public void merge(@Param("id") int id,@Param("name") String name,@Param("email") String email,@Param("ph") String ph);

}
