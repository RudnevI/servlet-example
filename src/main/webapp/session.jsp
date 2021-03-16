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
                <div class="form-group">
                    <label>NAME</label>
                    <input class="form-control" name="name" type="text">
                </div>
                <div class="form-group">
                    <label>SURNAME</label>
                    <input class="form-control" name="surname" type="text">
                </div>
                <div class="form-group">
                    <label>AGE</label>
                    <input class="form-control" name="age" type="text">
                </div>
                <button class="btn btn-sm btn-success">
                    SAVE USER DATA
                </button>
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