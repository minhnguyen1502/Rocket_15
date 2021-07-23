package com.vti.Abstraction2;

public abstract class Manager extends User{

    public Manager(String name, double salaryRatio) {
        super(name, salaryRatio);
    }

    @Override
    public double calculatePay() {
        return getSalaryRatio() * 520;
    }
}
