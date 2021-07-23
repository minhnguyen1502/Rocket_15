package com.vti.Inheritance4;

public class Library {
    private int id;
    private String nameOfPublisher;
    private int numberOfRelease;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNameOfPublisher() {
        return nameOfPublisher;
    }

    public void setNameOfPublisher(String nameOfPublisher) {
        this.nameOfPublisher = nameOfPublisher;
    }

    public int getNumberOfRelease() {
        return numberOfRelease;
    }

    public void setNumberOfRelease(int numberOfRelease) {
        this.numberOfRelease = numberOfRelease;
    }

    public Library(int id, String nameOfPublisher, int numberOfRelease) {
        this.id = id;
        this.nameOfPublisher = nameOfPublisher;
        this.numberOfRelease = numberOfRelease;
    }
}
