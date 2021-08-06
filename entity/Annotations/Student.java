package com.company.entity.Annotations;

public class Student {
    private int id;
    private String name;
    public static int count = 1;

    public Student(String name) {
        super();
        this.id = count++;
        this.name = name;
    }


    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public static int getCount() {
        return count;
    }

    public static void setCount(int count) {
        Student.count = count;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }

    /**
     * @deprecated replace by { @link #getIdV2()}
     */
    public int getId(){
        return id;
}   public String getIdV2(){
        return "MSV: "+ id;

    }
}
