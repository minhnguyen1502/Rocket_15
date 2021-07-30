package com.company.entity.Final;

public class StudentEx2 {
    private final int id;
    private final String name;

    public int getId() {
        return id;
    }

    @Override
    public String toString() {
        return "StudentEx2{" +
                "id=" + id +
                ", name='" + name +
                '}';
    }

    public String getName() {
        return name;
    }

    public StudentEx2(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public static void study() {
        System.out.println("Sinh viên đang học bài");

    }
}

