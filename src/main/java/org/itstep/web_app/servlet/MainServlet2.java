package org.itstep.web_app.servlet;

import org.itstep.web_app.dao.DbManager;
import org.itstep.web_app.entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/index2")
public class MainServlet2 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> userList = null;
        try {
            userList = DbManager.getAllUsers();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        if(userList != null) {
            request.setAttribute("users", userList);
        }
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
