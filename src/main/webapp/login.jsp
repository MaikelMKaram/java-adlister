<%--
  Created by IntelliJ IDEA.
  User: mikekaram
  Date: 12/15/22
  Time: 10:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="partials/navbar.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/login.jsp" method="post">
    <div    holder="Enter Username" name="username" required>

        <label for="password"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="password" required>

        <button type="submit">Login</button>
    </div>
    <%
        if (request.getMethod().equalsIgnoreCase("POST")){
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            if(username.equalsIgnoreCase("admin") && password.equalsIgnoreCase("password")){
                response.sendRedirect(("/profile.jsp"));
            } else {
                response.sendRedirect(("/login.jsp"));
            }
        }
    %>
</form>


</body>
</html>
