package org.itstep.web_app.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Arrays;
import java.util.Optional;

@WebServlet("/cookie")
public class CookieServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        /*request.getRequestDispatcher("cookie.jsp").forward(request, response);*/

      /*  Cookie[] cookies = request.getCookies();
        String text ="";
        if(cookies != null) {

            text = Arrays.stream(cookies)
                    .filter(c -> c.getName().equals("rem_cookie"))
                    .findFirst()
                    .get()
                    .getValue();
        }
        if(text.equals("")) text= "NO COOKIES";
        request.setAttribute("text", text);

        request.getRequestDispatcher("cookie.jsp").forward(request, response);

*/      int option = 1;

            Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                for (Cookie c: cookies) {
                    if (c.getName().equals("remlang")) {
                        if ( c.getValue().equals("ENG")){
                            option = 2;
                            break;
                        }
                       ;
                    }
                }


//                receivedCookie = Arrays.stream(cookies).filter(c -> c.getName().equals("remlang")).findFirst().get();
//                if (receivedCookie != null) {
//                    if (receivedCookie.getValue().equals("EN")) {
//                        option = 2;


            }


        request.setAttribute("option", option);
        request.getRequestDispatcher("cookie.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    /*    String cookie = request.getParameter("my_cookie");

        Cookie remCookie = new Cookie("rem_cookie", cookie);
        remCookie.setMaxAge(5);
        response.addCookie(remCookie);

        response.sendRedirect("/cookie");*/

    String cookie = request.getParameter("rem_lang");
    Cookie remLangCookie = new Cookie("remlang", cookie);
    response.addCookie(remLangCookie);
    response.sendRedirect("/cookie");

    }
}
