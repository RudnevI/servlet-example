package org.itstep.web_app.servlet.entity;

public class Car {

    private Integer id;

    private String model;

    private Double engineVolume;

    private Integer price;



    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public Double getEngineVolume() {
        return engineVolume;
    }

    public void setEngineVolume(Double engineVolume) {
        this.engineVolume = engineVolume;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Car(Integer id, String model, Double engineVolume, Integer price) {
        this.id = id;
        this.model = model;
        this.engineVolume = engineVolume;
        this.price = price;
    }

    @Override
    public String toString() {
        return "Car{" +
                "id=" + id +
                ", model='" + model + '\'' +
                ", engineVolume=" + engineVolume +
                ", price=" + price +
                '}';
    }
}
