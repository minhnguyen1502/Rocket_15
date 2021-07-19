import java.time.Year;
import java.util.Scanner;

public class Exercise_5_Input_from_console {

    public static void main(String[] args){
//        // Question 1:
//        Scanner scan = new Scanner(System.in);
//
//        System.out.println("3 số nguyên là: ");
//                System.out.printf("số nguyên thứ nhất là: ");
//        int x = scan.nextInt();
//                System.out.printf("số nguyên thứ hai là: ");
//        int y = scan.nextInt();
//                System.out.printf("số nguyên thứ ba là: ");
//        int z = scan.nextInt();
//        System.out.println("3 số nguyên bạn nhập là: "  +x + "," +y +","+ z);
//
//        scan.close();
//
//    // Question 2:
//        Scanner scanner = new Scanner(System.in);
//
//        System.out.println("2 số thực là: ");
//        System.out.printf("số thực thứ nhất là: ");
//        float a = scanner.nextFloat();
//        System.out.printf("số thực thứ hai là: ");
//        float b = scanner.nextFloat();
//        System.out.println("2 số thực bạn nhập là: "  +a + "," +b );

//        scanner.close();

//        // Question 3:
//        Scanner scan_3 = new Scanner(System.in);
//
//        System.out.println("Mời bạn nhập Họ và Tên: ");
//        System.out.printf("Họ của bạn là: ");
//        String H = scan_3.next();
//        System.out.printf("Tên của bạn là: ");
//        String T = scan_3.next();
//        System.out.println("Họ và Tên: " + H + " " + T );
//
//        scan_3.close();

        // Question 4:
//        Scanner scan_4 = new Scanner(System.in);
//
//        System.out.println("Mời bạn nhập ngày sinh nhật : ");
//        System.out.printf("Năm sinh của bạn là: ");
//        int Y = scan_4.nextInt();
//        System.out.printf("Tháng sinh của bạn là: ");
//        int M = scan_4.nextInt();
//        System.out.printf("Ngày sinh của bạn là: ");
//        int D = scan_4.nextInt();
//        System.out.println(" Sinh nhật bạn là: " + D + "-" + M + "-" +Y );
//        scan_4.close();

        // Question 5
//        Scanner scan_5 = new Scanner(System.in);
//        System.out.println("Thông tin new Account:");
//        Account acc_new = new Account();
//            System.out.print("id Account là:");
//        acc_new.id = scan_5.nextInt();
//            System.out.print("email Account là:");
//        acc_new.email = scan_5.next();
//            System.out.print("fullname Account là:");
//        acc_new.fullName = scan_5.next();
//            System.out.print("Position Account là:");
//            int pos = scan_5.nextInt();
//        switch (pos ){
//            case 1:
//                Position pos1 = new Position();
//                pos1.name = positionName.DEV;
//                acc_new.position = pos1;
//                break;
//            case 2:
//                Position pos2 = new Position();
//                pos2.name = positionName.TEST;
//                acc_new.position = pos2;
//                break;
//            case 3:
//                Position pos3 = new Position();
//                pos3.name = positionName.SCRUM_MASTER;
//                acc_new.position = pos3;
//                break;
//            case 4:
//                Position pos4 = new Position();
//                pos4.name = positionName.PM;
//                acc_new.position = pos4;
//                break;
//        }
//        System.out.println("Account mới là: " + "ID:" + acc_new.id +" "+"Email:" +" "+ acc_new.email +" "+"Fullname:"+" "+ acc_new.fullName +" "+"Position:"+" "+ acc_new.position.name );




        // Question 6:
        //Viết lệnh cho phép người dùng tạo department (viết thành method)
//        Scanner scan_6 = new Scanner(System.in);
//        System.out.println("mời bạn nhập thông tin Department: ");
//        Department dep_new = new Department();
//        System.out.printf("ID Department là: ");
//        dep_new.id = scan_6.nextInt();
//        System.out.printf("Tên Department là: ");
//        dep_new.name = scan_6.next();
//        System.out.printf("Department bạn vừa tạo là: " + dep_new.id + " :" +dep_new.name );
//        scan_6.close();

//       // Question 7:
        //Nhập số chẵn từ console
//        Scanner scan_7 = new Scanner(System.in);
//        System.out.print("Mời bạn nhập số chẵn: ");
//            int X = scan_7.nextInt();
//            if (X % 2 == 0){
//                System.out.println("Số chẵn bạn nhập là:" + X);
//                return;
//        }else ;
//        System.out.println("Bạn nhập không phải số chẵn.");
//        scan_7.close();

        // Question 8:
//      Scanner scan_8 = new Scanner(System.in);
//      System.out.println("mời bạn nhập vào chức năng muốn sử dụng");
//      int n = scan_8.nextInt();
//      switch (n) {
//          case 1:
//              Scanner scan_5 = new Scanner(System.in);
//              System.out.println("Thông tin new Account:");
//              Account acc_new = new Account();
//              System.out.print("id Account là:");
//              acc_new.id = scan_5.nextInt();
//              System.out.print("email Account là:");
//              acc_new.email = scan_5.next();
//              System.out.print("fullname Account là:");
//              acc_new.fullName = scan_5.next();
//              System.out.print("Position Account là:");
//              int pos = scan_5.nextInt();
//              switch (pos ){
//                  case 1:
//                      Position pos1 = new Position();
//                      pos1.name = positionName.DEV;
//                      acc_new.position = pos1;
//                      break;
//                  case 2:
//                      Position pos2 = new Position();
//                      pos2.name = positionName.TEST;
//                      acc_new.position = pos2;
//                      break;
//                  case 3:
//                      Position pos3 = new Position();
//                      pos3.name = positionName.SCRUM_MASTER;
//                      acc_new.position = pos3;
//                      break;
//                  case 4:
//                      Position pos4 = new Position();
//                      pos4.name = positionName.PM;
//                      acc_new.position = pos4;
//                      break;
//              }
//              System.out.println("Account mới là: " + "ID:" + acc_new.id +" "+"Email:" +" "+ acc_new.email +" "+"Fullname:"+" "+ acc_new.fullName +" "+"Position:"+" "+ acc_new.position.name );
//         break;
//          case 2:
//              Scanner scan_7 = new Scanner(System.in);
//              System.out.print("Mời bạn nhập số chẵn: ");
//              int X = scan_7.nextInt();
//              if (X % 2 == 0){
//                  System.out.println("Số chẵn bạn nhập là:" + X);
//                  return;
//              }else ;
//              System.out.println("Bạn nhập không phải số chẵn.");
//              scan_7.close();
//          break;
//          default:
//              System.out.println("vui lòng nhập lại.");
//      }


    }

}
