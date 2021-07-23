package com.vti.Inheritance;

public class Worker extends can_bo {
    private int bac;

    public Worker(String hoTen, int tuoi, String gioiTinh, String diachi) {
        super(hoTen, tuoi, gioiTinh, diachi);
        this.bac = bac;
    }

    @Override
    public String toString() {
        return super.toString() + "Position: Worker [rank=" + bac + "]";
    }
}



