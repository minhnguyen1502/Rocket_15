package com.vti.Inheritance4;

import java.time.LocalDate;

public class Journal extends Library{
     private int numRelease;
     private LocalDate monthRelease;

    public int getNumRelease() {
        return numRelease;
    }

    public void setNumRelease(int numRelease) {
        this.numRelease = numRelease;
    }

    public LocalDate getMonthRelease() {
        return monthRelease;
    }

    public void setMonthRelease(LocalDate monthRelease) {
        this.monthRelease = monthRelease;
    }

    public Journal(int id, String nameOfPublisher, int numberOfRelease) {
        super(id, nameOfPublisher, numberOfRelease);
    }
}
