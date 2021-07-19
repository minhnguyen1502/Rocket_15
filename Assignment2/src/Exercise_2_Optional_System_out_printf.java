import java.util.Date;
import java.util.Locale;
import java.util.Scanner;

public class Exercise_2_Optional_System_out_printf {
    public static void main(String[] args) {


        // Question 1:
        System.out.printf("%s %d %n", "số nguyên =", 5);

        // Question 2:
        System.out.printf(Locale.US, "%s %,d %n", "Số nguyên =", 1000000 );

        // Question 3:
        System.out.printf("%s %5.4f %n","số thực = 5,567098 chỉ bao gồm 4 số đằng sau là", 5.567098);

        // Question 4:
        Scanner scanner = new Scanner(System.in);
        System.out.println("Họ và tên: ");
        String X = scanner.next();
        System.out.println("Tôi tên là:" + X +" và tôi đang độc thân");
        scanner.close();

        // Question 6:



    }

}
