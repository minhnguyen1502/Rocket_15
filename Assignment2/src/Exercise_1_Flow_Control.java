import java.util.Date;

public class Exercise_1_Flow_Control {

    public static void main(String[] args) {
        Department department1 = new Department();
        department1.id = 1;
        department1.name = "Sale";

        Department department2 = new Department();
        department2.id = 2;
        department2.name = "Marketing";

        Position position1 = new Position();
        position1.id = 1;
        position1.name = positionName.TEST;

        Position position2 = new Position();
        position2.id = 2;
        position2.name = positionName.SCRUM_MASTER;

        Position position3 = new Position();
        position3.id = 3;
        position3.name = positionName.PM;

        Account account1 = new Account();
        account1.id = 1;
        account1.email = "account1@gamil.com";
        account1.userName = "NguyenA";
        account1.fullName = "Nguyen Van A";
        account1.department = department2;
        account1.position = position1;
        account1.date = new Date("2020/04/22");

        Account account2 = new Account();
        account2.id = 2;
        account2.email = "account2@gamil.com";
        account2.userName = "NguyenB";
        account2.fullName = "Nguyen Duc B";
        account2.position = position2;
        account2.date = new Date("2020/05/26");


        Account account3 = new Account();
        account3.id = 3;
        account3.email = "account3@gamil.com";
        account3.userName = "LeC";
        account3.fullName = "Le Van C";
        account3.department = department1;
        account3.position = position3;
        account3.date = new Date("2020/06/27");

        Group group1 = new Group();
        group1.id = 1;
        group1.name = "G1";
        group1.creator = account3;
        group1.date = new java.sql.Date(2021 - 05 - 29);

        Group group2 = new Group();
        group2.id = 2;
        group2.name = "G2";
        group2.creator = account2;
        group2.date = new java.sql.Date(2021 - 05 - 29);

        Group group3 = new Group();
        group3.id = 3;
        group3.name = "G2";
        group3.creator = account2;
        group3.date = new java.sql.Date(2021 - 06 - 29);

        Group[] groupsOfAccount2 = {group1, group2};
        account2.groups = groupsOfAccount2;
        Group[] groupsOfAccount1 = {group1, group2, group3};
        account1.groups = groupsOfAccount1;


        //  Question 1:
        if (account1.department == null) {
            System.out.println("Nhân viên này chưa có phòng ban");
        } else System.out.println("Phòng ban của nhân viên này là " + account1.department.name);


        // Question 2:

        if (account1.groups == null) {
            System.out.println("Nhân viên này chưa có group");
        } else if (account1.groups.length <= 2) {
            System.out.println("Group của nhân viên này là Java Fresher, C# Fresher");
        } else if (account1.groups.length == 3) {
            System.out.println("Nhân viên này là người quan trọng, tham gia nhiều group");
        } else System.out.println("Nhân viên này là người hóng chuyện, tham gia tất cả các group nhiều group");

        // Question 3:
        System.out.println(account3.department == null ? "Nhân viên này chưa có phòng ban" : "Phòng ban của nhân viên này là " + account3.department.name);

        // Question 4:
        System.out.println(account1.position.name.toString() == "Dev"  ? "Đây là Developer" : "Người này không phải là Developer");

        // SWITCH CASE
        // Question 5:
        int số_lượng_account = 2;
        switch (số_lượng_account) {
            case 1:
                System.out.println("Nhóm có một thành viên");
            case 2:
                System.out.println("Nhóm có hai thành viên");
            case 3:
                System.out.println("Nhóm có ba thành viên");
            default:
                System.out.println("Nhóm có nhiều thành viên");
                break;
        }

            // Question 6:
            if(account2.groups == null) {
                System.out.println("Nhân viên này chưa có group");
            } else {
            switch (account2.groups.length) {
                case 1:
                    System.out.println("Group của nhân viên này là Java Fresher, C# Fresher");
                case 2:
                    System.out.println("Group của nhân viên này là Java Fresher, C# Fresher");
                case 3:
                    System.out.println("Nhân viên này là người quan trọng, tham gia nhiều group");
                default:
                    System.out.println("Nhân viên này là người hóng chuyện, tham gia tất cả các group");
                    break;

                // Question 7:

                // FOREACH
                // Question 8:





            }
        }
    }
}



