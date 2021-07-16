import com.sun.xml.internal.bind.v2.runtime.output.StAXExStreamWriterOutput;

public class Program {
    public static void main(String[] args){
        Department department1 = new Department();
        department1.id = 1;
        department1.name = "Sale";

        Department department2 = new Department();
        department2.id = 2;
        department2.name = "Marketing";

        Group group1 = new Group();
        group1.id = 1;
        group1.name = "G1";

        Group group2 = new Group();
        group2.id = 2;
        group2.name = "G2";

        Group group3 = new Group();
        group3.id = 1;
        group3.name = "G3";

        Account account1 = new Account();
        account1.id = 1;
        account1.fullName = "NguyenVanA";
        account1.department = department2;
        Group[] groupOfAccount1 = {  group2, group3 } ;
        account1.groups = groupOfAccount1;


        Account account2 = new Account();
        account2.id = 2;
        account2.fullName = "NguyenVanB";
        account2.department = department2;
        Group[] groupOfAccount2 = { group1, group3 } ;
        account2.groups = groupOfAccount2;

        Account account3 = new Account();
        account3.id = 1;
        account3.fullName = "NguyenC";
        account3.department = department1;
        Group[] groupOfAccount3 = { group2, group1 } ;
        account3.groups = groupOfAccount3;


    System.out.println("thong tin account 1");
        System.out.println(account1.groups);
    }
}
