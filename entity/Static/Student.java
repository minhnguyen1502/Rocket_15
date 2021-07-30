package com.company.entity.Static;

import java.util.Scanner;

public class Student {
    private int id;
    private String name;
    public static String college = "Dai hoc bach khoa";
    public static int moneyGroup;
    public static int count =0;
    Scanner scan;

    public Student() {
        super();
        count ++;
        if (count >7){
            System.err.println("Số lượng sinh viên đã vượt quá 7");
    }else {
            this.id = count;
            System.out.println("Tên học sinh: ");
            this.name = scan.next();
        }
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", name='" + name +
                ",college=" +college +
                '}';
    }

    public static String getCollege() {
        return college;
    }

    public static void setCollege(String college) {
        Student.college = college;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Student(int id, String name) {
        this.id = id;
        this.name = name;
        count +=1;
    }


    }

