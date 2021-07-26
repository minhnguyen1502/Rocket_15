package com.company.Polymorphism.Q2;

import java.time.LocalDate;
import java.util.Scanner;

public class Person {
    private String name;
    private Gender gender;
    private LocalDate bithDate;
    private String address;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public LocalDate getBithDate() {
        return bithDate;
    }

    public void setBithDate(LocalDate bithDate) {
        this.bithDate = bithDate;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Person(String name, Gender gender, LocalDate bithDate, String address) {
        this.name = name;
        this.gender = gender;
        this.bithDate = bithDate;
        this.address = address;
    }
    public void inputInfo(){
        Scanner scan = new Scanner(System.in);
        System.out.println("nhập thông tin Person từ bàn phím; ");
        System.out.println("Name: ");
        this.name = scan.nextLine();
        System.out.println("Address: ");
        this.address = scan.nextLine();
        System.out.println("Bith Date: ");
        this.bithDate = LocalDate.parse(scan.next());
        System.out.println("Gender: 1.Male 2.female 3.unknow");
        int gender = scan.nextInt();
        switch (gender){
            case 1:
                this.gender = Gender.MALE;
                break;
            case 2:
                this.gender = Gender.FEMALE;
                break;
            case 3:
                this.gender = Gender.UNKNOW;
                break;
        }



    }
    public String showInfo(){
        return
        "Person [name=" + name + ", gender=" + gender + ", birthDate=" + bithDate + ", address="
                + address + "]";
    }
}
