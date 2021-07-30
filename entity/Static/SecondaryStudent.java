package com.company.entity.Static;

public class SecondaryStudent extends Student{
    public static int countSec = 0;
    public  SecondaryStudent(){
        super();
        countSec += 1;
    }
}
