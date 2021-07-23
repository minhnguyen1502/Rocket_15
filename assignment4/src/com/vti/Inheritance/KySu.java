package com.vti.Inheritance;

public class KySu extends can_bo{
    private String task;

    public KySu(String hoTen, int tuoi, String gioiTinh, String diachi) {
        super(hoTen, tuoi, gioiTinh, diachi);

        this.task = task;

    }


    public String toString() {
        return super.toString() + "Position: KySu [task=" + task + "]";
    }
}
