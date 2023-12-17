<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: #f7f7f7;
    }
    .login-container {
        width: 300px;
        margin: 80px auto;
        padding: 20px;
        background: #fff;
        box-shadow: 0 0 3px rgba(0, 0, 0, 0.1);
    }
    .login-container h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }
    .form-input {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ddd;
        box-sizing: border-box;
    }
    .login-button {
        width: 100%;
        padding: 10px;
        background: #5cb85c;
        color: white;
        border: none;
        cursor: pointer;
    }
</style>
</head>
<body>
<div class="login-container">
    <h2>Đăng nhập</h2>
    <form action="login" method="post">
        <input type="text" class="form-input" name="email" placeholder="Email" required />
        <input type="password" class="form-input" name="password" placeholder="Password" required />
        <p>${errorLogin}</p>
        <button type="submit" class="login-button">Đăng nhập</button>
    </form>
</div>
</body>
</html>
