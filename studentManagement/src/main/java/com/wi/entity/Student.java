package com.wi.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Student {
    @Id
    @GeneratedValue(generator = "stu_seq",strategy = GenerationType.SEQUENCE)
    @SequenceGenerator(name = "stu_seq",initialValue = 101)
    private int rollNo;
    private String studentName;
    private String email;
    private String phoneNumber;
}
