<%--
  Created by IntelliJ IDEA.
  User: Aleksei
  Date: 09.06.2022
  Time: 23:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error page</title>
    <style>
        .container {
            position: relative;
            text-align: center;
            color: black;
        }

        .centered {
            position: absolute;
            top: 30%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: black;
            font-style: oblique;
        }
    </style>
</head>
<body>
<div class="container">
    <img src="header.jpg" alt="header" height=120 width=100%>
    <h1 class="centered">Authorization Servlet Testing</h1>
</div>

<h1 style="text-align: center">Wrong password</h1>
<div style="text-align: center">
    <img src="security.jpg" alt="security" style="margin-bottom: 30px">
</div>
<div style="text-align: center">
<a href="/index.jsp">Назад</a>
</div>
</body>
</html>
