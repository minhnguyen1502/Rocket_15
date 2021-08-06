package com.company.entity.Inner_class;

public class Car {
    private String name;
    private String type;
    public Engine engine;

    @Override
    public String toString() {
        return "Car{" +
                "name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", engine=" + engine +
                '}';
    }

    public Car(String name, String type) {
        this.name = name;
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }



    public class Engine{
        private String engineType;

        public Engine(String engineType) {
            this.engineType = engineType;
        }

        public String getEngineType() {
            return engineType;
        }

        @Override
        public String toString() {
            return engineType;
        }

        public void setEngineType(String engineType) {
            this.engineType = engineType;
        }
    }
}
