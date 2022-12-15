<%--
  Created by IntelliJ IDEA.
  User: mikekaram
  Date: 12/15/22
  Time: 10:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="/login.jsp" method="post">
    <div class="container">
        <label for="username"><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name="username" required>

        <label for="password"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="password" required>

        <button type="submit">Login</button>
    </div>
    <%
        if (request.getMethod().equalsIgnoreCase("POST")){
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            if(username.equalsIgnoreCase("username") && password.equalsIgnoreCase("password")){
                response.sendRedirect(("/profile.jsp"));
            } else {
                response.sendRedirect(("/login.jsp"));
            }
        }
    %>
</form>


</body>
</html>
