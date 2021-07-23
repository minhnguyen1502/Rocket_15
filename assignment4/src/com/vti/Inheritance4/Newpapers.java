package com.vti.Inheritance4;

import java.time.LocalDate;

public class Newpapers extends  Library{
    private LocalDate dayRelease;

    public LocalDate getDayRelease() {
        return dayRelease;
    }

    public void setDayRelease(LocalDate dayRelease) {
        this.dayRelease = dayRelease;
    }

    public Newpapers(int id, String nameOfPublisher, int numberOfRelease) {
        super(id, nameOfPublisher, numberOfRelease);
    }
}
