package com.wi.controller;

import com.wi.dto.StudentDto;
import com.wi.entity.Student;
import com.wi.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.util.List;

@Controller
public class StudentController {
    static int id;
    @Autowired
    private StudentService studentService;
    @GetMapping("/register")
    public String register(Model model){
        model.addAttribute("student",new StudentDto());
        return "register";
    }
    @PostMapping("/register")
    public String register(@Valid @ModelAttribute("student") StudentDto studentDto, BindingResult bindingResult,Model model){
        if(bindingResult.hasErrors()) {
            return "register";
        }
        else {
            studentService.save(studentDto);
        }
        model.addAttribute("student",studentDto);
        return "registersuccess";
    }
    @GetMapping("/fetchAll")
    public String getAll(Model model){
        List<Student> students=studentService.findAll();
        model.addAttribute("students",students);
        return "getstudents";
    }
    @DeleteMapping("/delete")
    public String delete(@RequestParam int id){
        studentService.deleteById(id);
        return "getStudents";
    }
    @GetMapping("/updateRequest")
    public String updateRequest(){
        return "updaterequest";
    }
    @GetMapping("/update")
    public String update(@RequestParam("id") int id,Model model){
        this.id=id;
        Student student = studentService.findById(id);
        StudentDto studentDto = new StudentDto();
        studentDto.setStudentName(student.getStudentName());
        studentDto.setPhoneNumber(student.getPhoneNumber());
        studentDto.setEmail(student.getEmail());
        model.addAttribute("student",studentDto);
        return "update";
    }
    @PostMapping("/update")
    public String update(@Valid @ModelAttribute("student")StudentDto studentDto, BindingResult bindingResult){
        if(bindingResult.hasErrors())
            return "update";
        studentService.update(id,studentDto);
        return "registersuccess";
    }

    // ---------------- About Page ----------------
    @GetMapping("/about")
    public String aboutPage() {
        return "about";
    }

    // ---------------- Error Page ----------------
    @GetMapping("/error")
    public String errorPage(@ModelAttribute("operation") String operation,
                            Model model) {
        model.addAttribute("operation", operation);
        return "error";
    }

    // ---------------- Delete Student ----------------
    @GetMapping("/deleteRequest")
    public String deleteRequest() {
        return "delete";
    }

    @PostMapping("/delete")
    public String delete(@RequestParam int id, Model model/*RedirectAttributes redirectAttributes*/) {


        studentService.deleteById(id);

        // Success message
        //  redirectAttributes.addFlashAttribute("successMessage", "Student deleted successfully!");

        return "redirect:/deletesuccess";
    }
    @GetMapping("/deletesuccess")
    public String deleteSuccess() {
        return "deletesuccess";
    }

}
