package com.company.backend;

import com.company.entity.Inner_class.CPU;
import com.company.entity.Inner_class.Car;

public class Program2 {
    public void Question1(){
        CPU cpu = new CPU(4799000);
        CPU.Ram ram = cpu.new Ram();
        float clockSpeed = ram.getClockSpeed();
        CPU.Processor processor = cpu.new Processor();
        float cache = processor.getCache();
        System.out.println(cpu);
        System.out.println(processor.getCache());
        System.out.println(ram.getClockSpeed());




     }
    public void Question2(){
        Car car = new Car("Mazda","8WD");
        Car.Engine engine = car.new Engine("Crysler");
        car.engine = engine;
        System.out.println(car);
    }
}
