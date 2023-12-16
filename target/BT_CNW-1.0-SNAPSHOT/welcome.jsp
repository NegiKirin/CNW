<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 05/12/2023
  Time: 02:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="ISO-8859-1" %>
<%@ page language="java" import="java.util.ArrayList" %>
<%@ page language="java" import="model.bean.Wife" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Welcome</title>
</head>
<body>
    <table>
        <%
            ArrayList<Wife> wifeArray = (ArrayList<Wife>)request.getAttribute("wifeArray");
            for (int i = 0; i < wifeArray.size(); i++) {
                %>
            <tr>
                <td><%=wifeArray.get(i).getName()%></td>
                <td><%=wifeArray.get(i).getAddress()%></td>
                <td><%=wifeArray.get(i).isAlive()%></td>
            </tr>
        <%
            }
        %>

    </table>
</body>
</html>
