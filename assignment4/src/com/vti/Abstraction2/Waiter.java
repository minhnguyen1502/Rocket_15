package com.vti.Abstraction2;

public abstract class Waiter extends User{
    public Waiter(String name, double salaryRatio) {
        super(name, salaryRatio);
    }

    @Override
    public double calculatePay() {
        return getSalaryRatio() * 220;
    }
}
