package com.company.frontend;

import com.company.backend.NgayThangNam;

public class MainClass2 {
    public static void main(String[] args) {
        NgayThangNam date = new NgayThangNam();
        date.ngay = 11;
        date.thang = 10;
        date.nam = 2017;
        NgayThangNam.GioPhutGiay time = date.new GioPhutGiay();
        time.gio = 10;
        time.phut = 15;
        time.giay = 30;

        time.xuatThongTin();
    }
}
