import java.util.Locale;
import java.util.Scanner;

public class Exercise_4_String {
    public static void main(String[] args) {
        // Question 1:

//        Scanner scanner = new Scanner(System.in);
//        System.out.println("Nhập chuỗi: ");
//        String  s1 = scanner.next();
//        System.out.println("số ký tự trong chuỗi là:" +s1.length());
//
//        // Question 2:
//        Scanner scan_2 = new Scanner(System.in);
//        System.out.println("Nhập chuỗi: ");
//        System.out.println("chuỗi s1 là: ");
//        String  s_1 = scan_2.next();
//        System.out.println("chuỗi s2 là: ");
//        String  s_2 = scan_2.next();
//        System.out.println("kết quả 2 chuổi là: " +s_1+" "+s_2);

        // Question 3:
//        Scanner scan_3 = new Scanner(System.in);
//        String fullName;
//        System.out.println("Nhập tên: ");
//        fullName = scan_3.nextLine();
//        char[] charArray = fullName.toCharArray();
//        boolean foundSpace = true;
//        //sử dụng vòng lặp for để duyệt các phần tử trong charArray
//        for (int i = 0; i < charArray.length; i++) {
//            // nếu phần tử trong mảng là một chữ cái
//            if (Character.isLetter(charArray[i])) {
//                // kiểm tra khoảng trắng có trước chữ cái
//                if (foundSpace) {
//                    //đổi chữ cái thành chữ in hoa bằng phương thức toUpperCase()
//                    charArray[i] = Character.toUpperCase(charArray[i]);
//                    foundSpace = false;
//                }
//            } else {
//                foundSpace = true;
//            }
//        }
//        // chuyển đổi mảng char thành string
//        fullName = String.valueOf(charArray);
//        System.out.println("Chuỗi sau khi đổi: \n" + fullName);

        // Question 4
//        Scanner scan_4 = new Scanner(System.in);
//        String name;
//        System.out.println("Nhập tên: ");
//        name = scan_4.nextLine();
//        name = name.toUpperCase();
//        for (int i = 0; i < name.length(); i++) {
//            System.out.println("kí tự thứ" +i+ name.charAt(i));
//        }
        // Question 5:
//        Scanner scan_5 = new Scanner(System.in);
//        System.out.println("Your name is: ");
//        System.out.println("first name is: ");
//        String  firstName = scan_5.next();
//        System.out.println("Last name is: ");
//        String  lastName = scan_5.next();
//        System.out.println("Full name is: " +firstName+" "+lastName);

        // Question 7:
//        Scanner scan_7 = new Scanner(System.in);
//        System.out.println("mời nhập tên: ");
//        String name;
//        name = scan_7.nextLine();
//        // a,
//        System.out.println("Tên của bạn là: " + name.trim());
//        // b,
//
//        System.out.println("Tên của bạn là: " + name.trim());
//        scan_7.close();

        // Question 8:
//        String[] groupNames = {"Java1", "Java2", "Java3", "abc"};
//        for (String groupName : groupNames) {
//            if (groupName.contains("Java")) {
//                System.out.println(groupName);
//    }
//}
        // Question 11
//        Scanner scan_11 = new Scanner(System.in);
//        System.out.println("chuỗi nhập: ");
//        String str = scan_11.nextLine();
//        scan_11.close();
//        int count = 0;
//        for (int i = 0; i < str.length(); i++) {
//            if ('a' == str.charAt(i)) {
//                count++;
//            }
//        }
//        System.out.println("số kí tự 'a' trong chuõi là" + count);

        // Question 12
//        Scanner scanner = new Scanner(System.in);
//        String s1, reS1 = "";
//        System.out.println("Nhập chuỗi 1");
//        s1 = scanner.nextLine();
//        for (int i = s1.length() - 1; i >= 0; i--) {
//            reS1 += s1.charAt(i);
//        }
//        System.out.println(reS1);
//        scanner.close();

        // question 14
//        String Str_14 = "VTI Academy";
//        System.out.println("sau khi chuyển: " +Str_14.replace("e","*"));

         // question 15

    }
}

