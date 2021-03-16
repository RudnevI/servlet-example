package org.itstep.web_app.servlet;

import org.itstep.web_app.dao.DbManager;
import org.itstep.web_app.entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/user")
public class UserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("user_name");
        String email = request.getParameter("user_email");
        System.out.println(name);
        System.out.println(email);
        User user = new User(name, email);
        try {
            DbManager.createUser(user);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        response.sendRedirect("/");
    }
}
