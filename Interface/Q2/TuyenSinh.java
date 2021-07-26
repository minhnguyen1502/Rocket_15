package com.company.Interface.Q2;

import java.util.ArrayList;
import java.util.Scanner;

public class TuyenSinh implements ITuyenSinh {
    private ArrayList<Student> listStudent = new ArrayList<Student>();
    private Scanner scan = new Scanner(System.in);




    public void addStudent(){
        System.out.println("Nhập vào tên thí sinh:");
        String hoTen = scan.next();
        System.out.println("Nhập vào địa chỉ thí sinh:");
        String diaChi = scan.next();
        System.out.println("Nhập vào mức ưu tiên thí sinh:");
        int mucUuTien = scan.nextInt();
        System.out.println("Nhập vào khối thí sinh chọn các khối A, B, C: ");
        String khoiThi = scan.next();
        Student student = new Student(hoTen,diaChi,mucUuTien,new KhoiThi(khoiThi));
        listStudent.add(student);
    }
    public void findStudent(){
        for (Student students: listStudent) {
            System.out.println(students);
        }
    }
    public void findStudentById(int id){
        for (Student students: listStudent) {
            if (students.getSoBaoDanh() == id);
            System.out.println(students);
        }
    }


}
