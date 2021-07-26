package com.company.Interface.Q2;

public class Student {
    public static int count = 0;
    private int soBaoDanh;
    private String hoTen;
    private String diaChi;
    private int mucUuTien;
    private KhoiThi khoiThi;

    public Student(String hoTen, String diaChi, int mucUuTien) {

    }

    public int getSoBaoDanh() {
        return soBaoDanh;
    }

    public void setSoBaoDanh(int soBaoDanh) {
        this.soBaoDanh = soBaoDanh;
    }

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public int getMucUuTien() {
        return mucUuTien;
    }

    public void setMucUuTien(int mucUuTien) {
        this.mucUuTien = mucUuTien;
    }

    public Student(String hoTen,
                   String diaChi,
                    int mucUuTien,
                    KhoiThi khoiThi) {

        this.soBaoDanh = count;
        this.hoTen = this.hoTen;
        this.diaChi = this.diaChi;
        this.mucUuTien = this.mucUuTien;
    }
}
