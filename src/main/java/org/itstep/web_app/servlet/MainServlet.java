package org.itstep.web_app.servlet;


import org.itstep.web_app.servlet.dao.DbManager;
import org.itstep.web_app.servlet.entity.Car;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.logging.Logger;

@WebServlet(value = "/index")
public class MainServlet extends HttpServlet {

    private static final Logger LOGGER = Logger.getLogger(MainServlet.class.getName());


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        List<Car> cars = DbManager.getCars();
        request.setAttribute("machines", cars);
        request.getRequestDispatcher("/cars.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String model = request.getParameter("model");
        Double engineVolume = Double.parseDouble(request.getParameter("engine"));
        Integer price = Integer.parseInt(request.getParameter("price"));

        Car car = new Car(null,
                model,
                engineVolume,
                price
        );
        DbManager.addCar(car);
        response.sendRedirect("/index");

    }
}
