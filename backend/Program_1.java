package com.company.backend;

import com.company.entity.Static.PrimaryStudent;
import com.company.entity.Static.SecondaryStudent;
import com.company.entity.Static.Student;

public class Program_1 {


    public void Q1() {
        Student[] students = new Student[3];
        System.out.println("khởi 3 Sv: ");
        students[0] = new Student(1, "Nguyen Van A");
        students[1] = new Student(2, "Nguyen Duc B");
        students[2] = new Student(3, "Nguyen Thi C");
        for (int i = 0; i < 3; i++) {
            System.out.println(students[i].toString());
        }
        System.out.println("Change college: ");
        Student.college = "Dai hoc cong nghiep";
        for (int i = 0; i < 3; i++) {
            System.out.println(students[i].toString());
        }
    }
    public void Q2(){
        System.out.println("Các Student sẽ nộp quỹ, mỗi Student 100k");
        System.out.println("Tổng quỹ hiện là: " + (Student.moneyGroup +=300));
        System.out.println("Student thứ 1 lấy 50k đi mua bim bim, kẹo về liên hoan");
        System.out.println("Tổng quỹ hiện là: " + (Student.moneyGroup -= 50));
        System.out.println("Student thứ 2 lấy 20k đi mua bánh mì");
        System.out.println("Tổng quỹ hiện là: " + (Student.moneyGroup -= 20));
        System.out.println("Student thứ 3 lấy 150k đi mua đồ dùng học tập cho nhóm");
        System.out.println("Tổng quỹ hiện là: " + (Student.moneyGroup -= 150));
        System.out.println("cả nhóm mỗi người lại đóng quỹ mỗi người 50k");
        System.out.println("Tổng quỹ hiện là: " + (Student.moneyGroup += 50));

    }
    public void Q4(){
        System.out.println("quesstion 4: ");
        Student stu = new Student();
        System.out.println("college before: " + stu.getCollege());
        System.out.println("After change: Dai hoc HN");
        stu.setCollege("Dai hoc HN");
        System.out.println("college after: " + stu.getCollege());
    }
    public void Q5(){

        System.out.println("Số hc sinh đc khởi tạo là: " + Student.count);
    }
    public void Q6(){
        PrimaryStudent[] priStudent = new PrimaryStudent[2];
        System.out.println("2 PrimaryStudent là: ");
        priStudent[0] = new PrimaryStudent();
        priStudent[1] = new PrimaryStudent();
        System.out.println("Số hc sinh primaryStudent là: " + PrimaryStudent.countPri);

        SecondaryStudent[] secStudent = new SecondaryStudent[4];
        System.out.println("4 SecondaryStudent là: ");
        secStudent[0] = new SecondaryStudent();
        secStudent[1] = new SecondaryStudent();
        secStudent[2] = new SecondaryStudent();
        secStudent[3] = new SecondaryStudent();
        System.out.println("Số hc sinh SecondaryStudent là: " + SecondaryStudent.countSec);
        System.out.println("Tổng số học sinh SecondaryStudent và primaryStudent là: " +
                SecondaryStudent.countSec + " + " +
                PrimaryStudent.countPri +
                " = "+ (PrimaryStudent.countPri+SecondaryStudent.countSec));


    }

    }


