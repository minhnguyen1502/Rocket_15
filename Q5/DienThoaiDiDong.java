package com.company.Polymorphism.Q5;

public  class DienThoaiDiDong implements IPhone {
    public void nghe(){
        System.out.println("Đang nghe điện thoại. ");
    }
    public void goi(){
        System.out.println("Đang gọi điện thoại. ");
    }
    public void guiTinNhan(){
        System.out.println("Đang gửi tin nhắn. ");
    }
    public void nhanTinNhan(){
        System.out.println("Đang nhận tin nhắn. ");
    }
    public void tanCong(){
        System.out.println("Ném......");
    }

}
