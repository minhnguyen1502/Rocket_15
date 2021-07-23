package com.vti.Inheritance4;

import java.util.ArrayList;
import java.util.Scanner;

public class ManageLibrary {
public ManageLibrary(){
     Scanner scan = new Scanner(System.in);
    ArrayList<Document> docList = new ArrayList<Document>();

}


        public void menu () {
            while (true) {
                System.out.println("chương trình để quản lý tài liệu: ");
                System.out.println("1.Thêm mới tài liêu.");
                System.out.println("2.Xoá tài liệu theo mã tài liệu. ");
                System.out.println("3.Hiển thị thông tin về tài liệu. ");
                System.out.println("4.Tìm kiếm tài liệu theo loại. ");
                System.out.println("5.Thoát khỏi chương trình. ");
                Scanner scan = new Scanner(System.in);
                int choose = scan.nextInt();
                switch (choose) {
                    case 1:
                        // addDocument();
                        break;
                    case 2:
                        deleteDocument();
                        break;
                    case 3:
                       printList();
                        break;
                    case 4:
                        find();
                        break;
                    case 5:
                        return;
                    default:
                        System.out.println("Lựa chọn số có trên menu. Cảm ơn!");
                }
            }
        }
        public void deleteDocument(){
            System.out.println("Mời bạn nhập mã tài liệu cần xoá: ");
            Scanner scan = new Scanner(System.in);
            ArrayList<Document> docList = new ArrayList<Document>();
            int idDel = scan.nextInt();
            docList.removeIf(document -> document.equals(idDel));



        }
        public void printList(){
            ArrayList<Document> docList = new ArrayList<Document>();
            for ( Document document: docList){
                System.out.println(document);
            }
        }
        public void find(){
            System.out.println("Nhập vào loại tài liệu cần tìm kiếm 1.Sách, 2.Báo, 3.Tạp chí: ");
        Scanner scan_find = new Scanner(System.in);
        int chooseId = scan_find.nextInt();

}
    }



