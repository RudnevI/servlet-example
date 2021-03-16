package org.itstep.web_app.servlet.dao;

import org.itstep.web_app.servlet.entity.Car;

import java.util.ArrayList;
import java.util.List;

public class DbManager {

    private static List<Car> cars = new ArrayList<>();

    private static Integer id = 5;

    static {

        cars.add(new Car(1, "Mercedes", 5.5, 25000));
        cars.add(new Car(2, "Toyota", 2.5, 2000));
        cars.add(new Car(3, "BMW", 3.5, 22000));
        cars.add(new Car(4, "Lada", 1.6, 1000));

    }

    public static void addCar(Car car) {

        car.setId(id++);
        cars.add(car);

    }

    public static List<Car> getCars() {
        return cars;
    }


}
