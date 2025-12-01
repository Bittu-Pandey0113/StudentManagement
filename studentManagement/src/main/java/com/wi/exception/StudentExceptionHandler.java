package com.wi.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class StudentExceptionHandler {
    @ExceptionHandler
    public String studentNotFound(StudentNotFoundException studentNotFoundException){
        System.out.println(studentNotFoundException.getMessage());
        if(studentNotFoundException.getMessage().equals("Student not deleted")) return "deleteerror";
        return "error";
    }
}
