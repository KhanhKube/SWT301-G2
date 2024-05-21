<%-- 
    Document   : login
    Created on : Mar 4, 2024, 11:31:35 PM
    Author     : admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>AKUMA_STORE</title>
        <link rel="stylesheet" href="style.css">
        <link rel="shortcut icon" href="image/logo.png">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
              integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <body>
        <%@include file="tabar.jsp"%>
        <div class="login_form">
            <div class="left">
                <img src="image/logshoes.png">
            </div>

            <div class="right">
                <h1>Welcome Back!</h1>
                <h2  style="color: red ; margin-bottom: 5px">${err}</h2>
                <c:set var="cookie" value="${pageContext.request.cookies}"/>
                <form action="login" method="post">
                    <p>User Name</p>
                    <div class="user">
                        <i class="fa-solid fa-user"></i>
                        <input type="text" name="user" required placeholder="User Name" class="username" value="${cookie.uC.value}">
                    </div>

                    <p class="passwork_tag">Passwork</p>
                    <div class="passwork">
                        <i class="fa-solid fa-lock"></i>
                        <input type="password" name="passwork" required placeholder="Passwork" value="${cookie.pC.value}">
                    </div>
                        <p class="forget"><input type="checkbox" ${(cookie.rC!=null?'checked':'')} name="rb">Remember me</p>
                    <button type="submit">Login</button>

                    <button><a style="text-decoration: none;color: white" href="register.jsp">Register</a></button>


                    <div class="login_icon">
                        <a href="#"><img src="image/google.png"></a>
                        <a href="#"><img src="image/facebook.png"></a>
                        <a href="#"><img src="image/twitter.png"></a>
                    </div>
                </form>
            </div>

        </div>
    </body>
</html>
