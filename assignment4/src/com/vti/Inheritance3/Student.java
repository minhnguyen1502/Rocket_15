package com.vti.Inheritance3;

public class Student extends Person {
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Student(int id, String name) {
        super( name);
    }


}
