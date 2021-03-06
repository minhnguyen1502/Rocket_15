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
            System.out.println("Nh??n vi??n n??y ch??a c?? ph??ng ban");
        } else System.out.println("Ph??ng ban c???a nh??n vi??n n??y l?? " + account1.department.name);


        // Question 2:

        if (account1.groups == null) {
            System.out.println("Nh??n vi??n n??y ch??a c?? group");
        } else if (account1.groups.length <= 2) {
            System.out.println("Group c???a nh??n vi??n n??y l?? Java Fresher, C# Fresher");
        } else if (account1.groups.length == 3) {
            System.out.println("Nh??n vi??n n??y l?? ng?????i quan tr???ng, tham gia nhi???u group");
        } else System.out.println("Nh??n vi??n n??y l?? ng?????i h??ng chuy???n, tham gia t???t c??? c??c group nhi???u group");

        // Question 3:
        System.out.println(account3.department == null ? "Nh??n vi??n n??y ch??a c?? ph??ng ban" : "Ph??ng ban c???a nh??n vi??n n??y l?? " + account3.department.name);

        // Question 4:
        System.out.println(account1.position.name.toString() == "Dev"  ? "????y l?? Developer" : "Ng?????i n??y kh??ng ph???i l?? Developer");

        // SWITCH CASE
        // Question 5:
        int s???_l?????ng_account = 2;
        switch (s???_l?????ng_account) {
            case 1:
                System.out.println("Nh??m c?? m???t th??nh vi??n");
            case 2:
                System.out.println("Nh??m c?? hai th??nh vi??n");
            case 3:
                System.out.println("Nh??m c?? ba th??nh vi??n");
            default:
                System.out.println("Nh??m c?? nhi???u th??nh vi??n");
                break;
        }

            // Question 6:
            if(account2.groups == null) {
                System.out.println("Nh??n vi??n n??y ch??a c?? group");
            } else {
            switch (account2.groups.length) {
                case 1:
                    System.out.println("Group c???a nh??n vi??n n??y l?? Java Fresher, C# Fresher");
                case 2:
                    System.out.println("Group c???a nh??n vi??n n??y l?? Java Fresher, C# Fresher");
                case 3:
                    System.out.println("Nh??n vi??n n??y l?? ng?????i quan tr???ng, tham gia nhi???u group");
                default:
                    System.out.println("Nh??n vi??n n??y l?? ng?????i h??ng chuy???n, tham gia t???t c??? c??c group");
                    break;

                // Question 7:

                // FOREACH
                // Question 8:





            }
        }
    }
}



