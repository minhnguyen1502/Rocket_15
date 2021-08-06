package com.company.backend;

import com.company.entity.Annotations.Student;

import java.util.Date;
import java.util.List;

public class Program1 {

    public void Question1(){
        @Deprecated
        Date date = new Date(2020,8,4);
        System.out.println(date);
    }
    public void Question2(){
        Student student1 = new Student("Nguyễn Văn A");
        Student student2 = new Student("Nguyễn Văn B");
        System.out.println(student1.getName());
        System.out.println(student1.getIdV2());
        student1.getId();
        student1.getIdV2();
    }
}
