<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Authorization page</title>
    <style>
        input {
            background: #b5f163; color: rgba(0,0,0,0.5);
        }
        form, div {
            text-align: center;
        }

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
<body style="background: #ffffff">


<div class="container">
    <img src="header.jpg" alt="header" height=120 width=100%>
    <h1 class="centered">Authorization Servlet Testing</h1>
</div>

<div>
    Введите логин и пароль
</div> <br/>
<form action="/authorization" method="post">
    <label for="login">Login</label>
    <input type="text" id="login" name="login" value="Login"
           style="margin-left: 22px; margin-top: 5px; margin-bottom: 5px;">
    <br/>
    <label for="password">Password</label>
    <input type="password" id="password" name="password" value="Password"
           style="margin-top: 5px; margin-bottom: 5px;" >
    <br/>
    <input type="submit" id="submit" value="Войти" style="background: #ffffff; color: rgba(0,0,0,0.53);
           margin-top: 5px; margin-bottom: 5px;">
</form>
</body>
</html>