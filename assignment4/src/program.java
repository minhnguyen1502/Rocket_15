import java.time.LocalDate;

public class program {
    public static void main(String[] args) {
        // department
        department dep1= new department();
        dep1.id = 1;
        dep1.name = "Sale";
        department dep2 = new department("Marketing");
        // Account
         Account acc1 = new Account();
         Account acc2 = new Account(2, "email2", "username2", "fullname2");

        Position pos1 = new Position();
        pos1.id = 1;
        pos1.name = positionName.PM;
        Position pos2 = new Position();
        pos2.id = 2;
        pos2.name = positionName.SCRUM_MASTER;
        Position pos3 = new Position();
        pos3.id = 3;
        pos3.name = positionName.DEV;

        // Account acc3 = new Account(3, "email3", "username3", "fullname3",pos1);
        Account acc4 = new Account(4, "email4", "username4", "fullname4",pos3, LocalDate.of(2020,10,12));


    }


}
