package com.company.entity.Inner_class;

public class CPU {
    private float price;
    private Processor processor;
    private Ram ram;

    @Override
    public String toString() {
        return "CPU{" +
                "price=" + price +
                ", processor=" + getProcessor() +
                ", ram=" + getRam() +
                '}';
    }

    public Processor getProcessor() {
        return processor;
    }

    public void setProcessor(Processor processor) {
        this.processor = processor;
    }

    public Ram getRam() {
        return ram;
    }

    public void setRam(Ram ram) {
        this.ram = ram;
    }

    public float getPrice() {
        return price;
    }
    public void setPrice(float price) {
        this.price = price;
    }
    public CPU(int price) {
        this.price = price;
    }




    public class Processor{
        private int coreAmount;
        private String manufacturer;

        public int getCoreAmount() {
            return coreAmount;
        }

        public void setCoreAmount(int coreAmount) {
            this.coreAmount = coreAmount;
        }

        public String getManufacturer() {
            return manufacturer;
        }

        public void setManufacturer(String manufacturer) {
            this.manufacturer = manufacturer;
        }

        public float getCache(){
            return  4.3f;
        }



    }
    public class Ram{
        private float memory;
        private String manufacturer;

        public float getMemory() {
            return memory;
        }

        public void setMemory(float memory) {
            this.memory = memory;
        }

        public String getManufacturer() {
            return manufacturer;
        }

        public void setManufacturer(String manufacturer) {
            this.manufacturer = manufacturer;
        }

        public float getClockSpeed(){
            return 5.0f;
        }


    }
}
