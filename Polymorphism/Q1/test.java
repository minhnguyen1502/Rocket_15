package com.company.Polymorphism.Q1;

import java.util.ArrayList;
import java.util.Random;
import java.util.Scanner;

public class test {
  private ArrayList<Student> students = new ArrayList<Student>();
   private   Scanner scan = new Scanner(System.in);
   private Random ranDom = new Random();


    public  void tes() {
        while (true) {
            System.out.println("Lựa chọn chức năng bạn muốn sử dụng");

            System.out.println(" 1. Tạo danh sách sinh viên.");

            System.out.println(" 2. Điểm danh lớp ");

            System.out.println(" 3. Gọi nhóm 1 đi học bài");

            System.out.println(" 4. Gọi nhóm 2 đi dọn vệ sinh");

            System.out.println(" 5. Exit");

            int choose = scan.nextInt();
            switch (choose) {
                case 1:
                    for (int i = 0; i<10;i++){
                        Student sd = new Student("Học Sinh: " + (i+1) + ranDom.nextInt(3)+1);
                        students.add(sd);
                    }
                    System.out.println("Tạo 10 học sinh, chia thành 3 nhóm thành công. ");
                 break;
                case 2:
                    System.out.println("Cả lớp điểm danh: ");
                    for (Student sd :students) {
                        sd.diemDanh();
                    }
                case 3:
                    System.out.println("Nhóm 1 đi học bài: ");
                    for (Student sd1: students) {
                        if (sd1.getGroup() == 1);
                        sd1.hocBai();
                    }
                    break;
                case 4:
                    System.out.println("Gọi nhóm 2 đi dọn vệ sinh: ");
                    for (Student sd2: students) {
                        if (sd2.getGroup() == 2);
                        sd2.diDonVeSinh();
                    }
                    break;

                case 5:
                    return;
                default:
                    System.out.println("bạn nhập sai.");
                    break;
            }
        }
    }
}





