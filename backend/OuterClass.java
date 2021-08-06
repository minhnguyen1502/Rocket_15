package com.company.backend;

public class OuterClass {
    public void show(){
        InnerClass innerClass = new InnerClass();
        innerClass.show();
    }
    public class InnerClass {
        public void show(){
            System.out.println("abc");
        }
    }
}
