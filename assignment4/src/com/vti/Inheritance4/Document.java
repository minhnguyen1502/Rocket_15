package com.vti.Inheritance4;

public class Document extends Library {
    private String nameOfAuthor;
    private int numberOfPages;

    public Document(int id, String nameOfPublisher, int numberOfRelease) {
        super(id, nameOfPublisher, numberOfRelease);

    }

    public String getNameOfAuthor() {
        return nameOfAuthor;
    }

    public void setNameOfAuthor(String nameOfAuthor) {
        this.nameOfAuthor = nameOfAuthor;
    }

    public int getNumberOfPages() {
        return numberOfPages;
    }

    public void setNumberOfPages(int numberOfPages) {
        this.numberOfPages = numberOfPages;
    }
}