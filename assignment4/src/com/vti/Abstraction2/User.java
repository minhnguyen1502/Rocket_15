package com.vti.Abstraction2;

public abstract class User {
    private String name;
    private double salaryRatio;

    public User(String name, double salaryRatio) {
        this.name = name;
        this.salaryRatio = salaryRatio;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getSalaryRatio() {
        return salaryRatio;
    }

    public void setSalaryRatio(double salaryRatio) {
        this.salaryRatio = salaryRatio;
    }
    public abstract double calculatePay();
    public void infor(){
        // a
        System.out.println("Name: "+name+" "+"salary ratio:"+salaryRatio);
        // b
        System.out.println(calculatePay());
        // c
        System.out.println("Name: "+name+"/n"
                            +"salary ratio: "+salaryRatio+"/n"
                            +"calculatePay: " +calculatePay());
    }


}
