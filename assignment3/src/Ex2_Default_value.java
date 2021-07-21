import com.sun.xml.internal.bind.v2.runtime.output.StAXExStreamWriterOutput;

import java.time.LocalDate;
import java.util.Date;

public class Ex2_Default_value {
    public static void main(String[] args) {
      Account[] acc = new Account[5];
      for (int i=0; i<acc.length; i++ ){
          Account new_acc = new Account();
          new_acc.email = "Email " + i;
          new_acc.userName = "User name " + i;
          new_acc.fullName = "Full name " + i;
          new_acc.date = LocalDate.now();
          acc[i] = new_acc;
          System.out.println("Thông tin Account " + i + " Email: " + acc[i].email + " UserName: " + acc[i].userName + " FullName: " + acc[i].fullName + " CreateDate: " + acc[i].date);
      }

    }
}
