package com.company.frontend;

import com.company.backend.OuterClass;
import com.sun.org.apache.bcel.internal.classfile.InnerClass;

public class MainClass {
    public static void main(String[] args) {
        OuterClass outerClass = new OuterClass();
        outerClass.show();

        OuterClass.InnerClass innerClass = outerClass.new InnerClass();
        innerClass.show();
    }
}
