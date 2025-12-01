package com.wi.service;

import com.wi.dao.StudentDao;
import com.wi.dto.StudentDto;
import com.wi.entity.Student;
import com.wi.exception.StudentNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentService {
    @Autowired
    private StudentDao studentDao;
    public Student findById(int id){

        return studentDao.findById(id).orElseThrow(()-> new StudentNotFoundException("Student not found"));
    }
    public Student deleteById(int id){
        Student student = studentDao.findById(id).orElseThrow(()-> new StudentNotFoundException("Student not deleted"));
        studentDao.deleteById(id);
        return student;
    }
    public void update(int id,StudentDto studentDto){
        studentDao.merge(id,studentDto.getStudentName(),
                studentDto.getEmail(),
                studentDto.getPhoneNumber());
    }

    public void save(StudentDto studentDto){
        Student student = Student.builder().
                phoneNumber(studentDto.getPhoneNumber()).
                studentName(studentDto.getStudentName()).
                email(studentDto.getEmail()).build();
        studentDao.save(student);

    }
    public List<Student> findAll()  {
        return studentDao.findAll();
    }
}
