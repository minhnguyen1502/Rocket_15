import javafx.scene.chart.PieChart;

import java.time.LocalDate;
import java.util.Date;

public class Account {
    int id;
    String email;
    String userName;
    String firstName;
    String lastName;
    String fullName;
    department department;
    Position position;
    LocalDate date;
//a
    Account(){
    }
    Account(int id, String email, String userName, String firstName ) {
        // b
        this.id = id;
        this.email = email;
        this.userName = userName;
        this.firstName = firstName;
        this.lastName = lastName;
        this.fullName = firstName + lastName;
    }
        // c
        Account(int id, String email, String userName, String firstName, Position pos3, LocalDate of) {
            this.id = id;
            this.email = email;
            this.userName = userName;
            this.firstName = firstName;
            this.lastName = lastName;
            this.fullName = firstName + lastName;
            this.position = position;
            this.date = LocalDate.now();
        }
    // d
    Account(int id,
            String email,
            String userName,
            String firstName,
            Position pos3) {
        this.id = id;
        this.email = email;
        this.userName = userName;
        this.firstName = firstName;
        this.lastName = lastName;
        this.fullName = firstName + lastName;
        this.date = date;

    }

}

