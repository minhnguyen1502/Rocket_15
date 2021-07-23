package com.vti.Inheritance3;

public class HighSchoolStudent extends Student{
    private String clazz;
    private String desiredUniversity;

    public HighSchoolStudent(int id, String name) {
        super(id, name);
    }

    public HighSchoolStudent(int id, String name, String clazz, String desiredUniversity) {
        super(id, name);
        this.clazz = clazz;
        this.desiredUniversity = desiredUniversity;

    }
}
