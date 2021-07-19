import java.util.Random;

public class Exercise_Random_Number {
    public static void main(String[] args) {
        // Question 1:
        Random random = new Random();
        int x = random.nextInt();
        System.out.println("So ngau nhien la: " + x);

        // Question 2:
        float y = random.nextFloat();
        System.out.println("So thuc ngau nhien la: " + y);

        // Question 3:
        String[] Danh_Sach = {"A","AB","ABC","ABCD"};
        int z = random.nextInt(Danh_Sach.length);
        System.out.println("Ten 1 ban ngau nhien la: " + Danh_Sach[z] );

        // Question 4:

        // Question 7:
        int a = random.nextInt(999 - 100 + 1) + 100;
        System.out.println("So cos 3 chu so ngau nhien la: " + a);


    }
}
