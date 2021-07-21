import com.sun.deploy.net.MessageHeader;

public class Exercise_5_Object_Method {
    public static void main(String[] args) {
        Department[] departments = new Department[2];
        Department department_1 = new Department();
        department_1.id = 1;
        department_1.name = "Phòng A";

        Department department_2 = new Department();
        department_2.id = 2;
        department_2.name = "Phòng A";

        departments[0] = department_1;
        departments[1] = department_2;
        // Question 1:

        System.out.println(department_1.toString());
        // Question 2:
        for (Department department : departments) {
            System.out.println(department.toString());
        }
        // Question 3:
        System.out.println("địa chỉ của phòng ban thứ 1 là: " + department_1.hashCode());
        // Question 4:
        if (department_1.name == "Phòng A") {
            System.out.println("có");
        } else {
            System.out.println("không");
        }
        // Question 5:
        if (department_1.name.equals(department_2.name)) {
            System.out.println("bằng");
        } else {
            System.out.println("không");
        }
        // Question 6:
                }
            }


