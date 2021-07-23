package com.vti.Inheritance;

public class can_bo {
   private String hoTen;
    private  int tuoi;
    private sex gioiTinh;
    private String diachi;


    public String getHoTen() {
        return hoTen;
    }

    public int getTuoi() {
        return tuoi;
    }

    public sex getGioiTinh() {
        return sex.valueOf(gioiTinh);
    }

    public String getDiachi() {
        return diachi;
    }

    public can_bo(String hoTen, int tuoi, String gioiTinh, String diachi) {
        this.hoTen = hoTen;
        this.tuoi = tuoi;
        this.gioiTinh = sex.valueOf(gioiTinh);
        this.diachi = diachi;
    }
}

