package com.wi.dto;

import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Positive;


@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class StudentDto {
    @Pattern( regexp = "^(?=.{2,50}$)[A-Za-z]+(?:[ .][A-Za-z]+)*$",
            message = "Name must be 2–50 characters and contain only " +
                    "letters and valid separators (space, dot)"
    )
    private String studentName;


    @Pattern(
            regexp = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$",
            message = "Please enter a valid email address (e.g., mailto:user@example.com)"
    )
    private  String email;
    @Pattern(
            regexp = "^\\+91[0-9]{10}$",
            message = "Phone number must start with +91 and contain exactly 10 digits."
    )
    private String phoneNumber;




}