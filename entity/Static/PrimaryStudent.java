package com.company.entity.Static;

public class PrimaryStudent extends Student{
    public static int countPri = 0;
    public PrimaryStudent (){
        super();
        countPri+=1;
    }


}
