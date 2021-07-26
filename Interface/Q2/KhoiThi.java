package com.company.Interface.Q2;

public class KhoiThi {
    private String name;
    private String subject;

    public KhoiThi(String khoiThi) {

    }

    public String getName() {
        return name;
    }



    public String getSubject() {
        switch (this.name){
            case "A":
                this.subject = "Toán, Lý, Hoá";
            case "B":
                this.subject = "Toán, Hoá, Sinh";
            case "C":
                this.subject = "Văn, Sử, Địa";
        }
        return subject;
    }


    public KhoiThi(String name, String subject) {
        this.name = name;
        this.subject = subject;
    }

}
