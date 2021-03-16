<%@ page import="org.itstep.web_app.entity.User" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%
    String name = "Abdul";
%>
<html>
<head>
    <title>Cookie Page</title>
    <%@include file="templates/head.jsp"%>

</head>
<body>
<div class="container-fluid">
    <%@include file="templates/navbar.jsp"%>
</div>
<div class="container">
    <div class="row">
        <div class="col-sm-6">
          <form action="/cookie" method="post">
              COOKIE: <input type="text" name="my_cookie">
              <button class="btn btn-sm btn-success">
                  SAVE COOKIE
              </button>
          </form>
        <div class="col-sm-6">
            <form method="post" action="/cookie">
            <select name="rem_lang">
                <%
                    String nameField = "Имя";
                    String surnameField="Фамилия";
                    String iinField ="ИИН";
                    int option = 1;

                    if((int) request.getAttribute("option") == 2) {
                        option = 2;

                    }
                    boolean engSelected = false;
                    if(option == 2) {
                        nameField="Name";
                        surnameField="Surname";
                        iinField="IIN";
                        engSelected = true;
                    }

                %>
                <option>RU</option>
                <option <%if(engSelected) out.print("selected");%>>ENG</option>
            </select>
                <button type="submit">Change Language</button>
            </form>
            <%


            %>
            <form>
                <label><%=nameField%></label><input type="text">
                <label><%=surnameField%></label><input type="text">
                <label><%=iinField%></label><input type="text">
            </form>
        </div>

        </div>
    </div>

<%--    <div class="row">
        <div class="col-sm-8 offset-2">
            <%
                String text = (String) request.getAttribute("text");
                out.print("<h1>" + text + "</h1>");
            %>


        </div>
    </div>

</div>--%>
<%--<form action="/index" method="get">
    <label>Your name: </label>
    <input type="text" name="name"/>
    <label>Your level: </label>
    <select name="level">
        <option>1</option>
        <option>2</option>
        <option>3</option>
    </select>
    <button>
        Send data
    </button>
</form>
<form action="/index" method="post">
    <label>Your favorite movie: </label>
    <input type="text" name="name"/>
    <label>Rating</label>
    <input type="number" name="rating">
    <button>
        Send
    </button>
</form>--%>
</body>
</html>