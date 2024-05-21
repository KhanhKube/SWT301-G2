<%-- 
    Document   : update
    Created on : Mar 11, 2024, 12:22:55 AM
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
        <style>
            form {
                display: flex;
                justify-content: center;
                margin-top: 50px;
                width: 600px;
            }

            .editTable {
                max-width: 400px;
                padding: 20px;
                border: 1px solid #ccc;
                border-radius: 5px;
                background-color: #f9f9f9;
                font-family: Arial, sans-serif;
            }

            .left {
                font-weight: bold;
            }

            .right {
                margin-left: 20px;
            }

            .right input#mNumber{
                width: 310px;
            }

            .right input[type="text"] {

                width: calc(100% - 20px);
                padding: 8px;
                border: 1px solid #ccc;
                border-radius: 3px;
                box-sizing: border-box;
            }

            .editRowBtn {
                margin-top: 20px;
                padding: 10px 20px;
                background-color: #4CAF50;
                color: white;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            .editRowBtn:hover {
                background-color: #45a049;
            }

        </style>
    </head>
    <body>
    <center>
        <h1>Update</h1>
        <h3 style="color: red">${requestScope.err}</h3>
        <form action="editUser" method="post">
            <div class="editTable">
                <div class="left"> Name: </div>
                <div class="right"><input type="text" name="name" id="fname" value="${update.username}"></div><br><br>
                <div class="left">Pass : </div>
                <div class="right"><input  style="    width: 290px;
    height: 32px;" type="password" name="pass"  id="lname" value="${update.password}"></div><br><br>
                <div class="left">Email: </div>
                <div class="right"><input  type="text" name="email" id="country" value="${update.email}"></div><br><br>
                <div class="left">Address: </div>
                <div class="right"><input type="text" name="address" id="mNumber" value="${update.address}"></div><br><br>
                <button type="submit" class="editRowBtn">Update</button>
                <button type="submit" class="editRowBtn"><a style="text-decoration: none ; color: white" href="listproduct">Back</a></button><br><br><br>
            </div>
        </form>
    </center>
</body>
</html>
