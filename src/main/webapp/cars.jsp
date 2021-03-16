<%@ page import="org.itstep.web_app.servlet.entity.Car" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: РудневИ
  Date: 11.03.2021
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

</head>
<body>
<form method="post" action="/index">
    <div class="mb-3">
        <label  class="form-label">Model</label>
        <input type="text" class="form-control"  aria-describedby="emailHelp" name="model">

    </div>
    <div class="mb-3">
        <label class="form-label">Engine Volume</label>
        <input type="text" class="form-control" aria-describedby="emailHelp" name="engine">

    </div>
    <div class="mb-3">
        <label  class="form-label">Price</label>
        <input type="text" class="form-control"  aria-describedby="emailHelp" name="price">

    </div>


    <button type="submit" class="btn btn-primary">Submit</button>
</form>
<table class="table">
    <thead>
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Model</th>
        <th scope="col">Engine volume</th>
        <th scope="col">Price</th>
    </tr>
    </thead>
    <tbody>
    <%
        List<Car> cars = (List<Car>) request.getAttribute("machines");
        for (Car car :
                cars) {


    %>
    <tr>

        <td>
            <%
                out.print(car.getId());
            %>
        </td>
        <td>
            <%
                out.print(car.getModel());
            %>
        </td>
        <td>
            <%
                out.print(car.getEngineVolume());
            %>
        </td>
        <td>
            <%
                out.print(car.getPrice());
            %>
        </td>


    </tr>
    <%
        }
    %>

    </tbody>
</table>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
        crossorigin="anonymous"></script>
</html>
