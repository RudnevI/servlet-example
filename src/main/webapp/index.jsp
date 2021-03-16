<%@ page import="org.itstep.web_app.entity.User" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%
    String name = "Abdul";
%>
<html>
<head>
    <title>JSP - Hello World</title>
    <%@include file="templates/head.jsp"%>

</head>
<body>
<div class="container-fluid">
    <%@include file="templates/navbar.jsp"%>
</div>
<div class="container">
    <div class="row">
        <div class="col-sm-6">
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                Launch static backdrop modal
            </button>

            <!-- Modal -->
            <form action="/user" method="post">
            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="staticBackdropLabel">Create new user</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>

                        <div class="modal-body">
                            <label>Name</label>
                            <div class="form-group">
                                <input type="text" name="user_name" required>
                            </div>
                            <label>Email</label>
                            <div class="form-group">
                                <input type="email" name="user_email" required>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                            <button type="submit" class="btn btn-primary">Create</button>
                        </div>
                    </div>
                </div>
            </div>
            </form>

        </div>
    </div>
    <div class="row">
        <div class="col-sm-8 offset-2">

            <div class="table table-striped">
                <table>
                <thead>
                <tr>
                    <th>id</th>
                    <th>name</th>
                    <th>email</th>
                    <th>details</th>
                </tr>
                </thead>
                <tbody>
                    <%
                        List<User> userList = (List<User>) request.getAttribute("users");
                        for (User user:
                             userList) {
                    %>
                <tr>
                    <td><%=user.getId()%></td>
                    <td><%=user.getName()%></td>
                    <td><%=user.getEmail()%></td>
                    <td><a href="/user?id=<%user.getId();%>"></a></td>


                </tr>
                <%
                    }
                %>
                </tbody>
                </table>
            </div>

        </div>
    </div>

</div>
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