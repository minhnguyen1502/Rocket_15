package com.vti.Inheritance;

public class NhanVien extends can_bo {
    private String congViec;


    public NhanVien(String hoTen, int tuoi, String gioiTinh, String diachi) {
        super(hoTen, tuoi, gioiTinh, diachi);
        this.congViec = congViec;
    }

    public String toString() {
        return super.toString() + "Position: NhanVien [congViec=" + congViec + "]";
    }
}
