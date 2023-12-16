<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 05/12/2023
  Time: 02:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Login page</title>
</head>
<body>
  <form action="CheckLoginServlet" method="post">
    Username: <input type="text" name="userName"/>
    Password: <input type="password" name="password"/>
    <input type="submit" value="Login"/>
  </form>
</body>
</html>
