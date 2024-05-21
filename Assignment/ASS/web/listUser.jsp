<%-- 
    Document   : listUser
    Created on : Mar 12, 2024, 3:10:39 PM
    Author     : admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>AKUMA_STORE</title>
        <link rel="stylesheet" href="styletabar.css">
        <link rel="shortcut icon" href="image/logo.png">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
              integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f0f0f0;
                margin: 0;
                padding: 0;
            }
            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
            }
            th, td {
                padding: 10px;
                text-align: left;
            }
            th {
                background-color: #4CAF50;
                color: white;
            }
            tr:nth-child(even) {
                background-color: #f2f2f2;
            }
            tr:hover {
                background-color: #ddd;
            }
            td:nth-child(5) {
                text-align: center;
            }
            .action-btn {
                background-color: #4CAF50;
                border: none;
                color: white;
                padding: 8px 12px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 14px;
                margin: 2px;
                cursor: pointer;
                border-radius: 4px;
            }
            .edit-btn {
                background-color: #008CBA;
            }
            .delete-btn {
                background-color: #f44336;
            }
            .action-btn:hover {
                background-color: #45a049;
            }

            .manager-product {
                margin-top: 50px;
                text-align: center;
                margin-bottom: 20px;
            }

            .manager-product h1 {
                font-size: 24px;
                color: #333;
                margin-bottom: 10px;
            }
        </style>
    </head>

    <body>

        <div class="manager-product">
            <h1>User</h1>
            <a href="listproduct" style="text-decoration: none">Back</a>
            <table border="1">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Pass</th>
                        <th>Email</th>
                        <th>Address</th>           
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listUser}" var="u">
                        <tr>
                            <td>${u.username}</td>
                            <td>${u.password}</td>
                            <td>${u.email}</td>                           
                            <td>${u.address}</td>                           
                            <td>
                                <button class="action-btn delete-btn">
                                    <a style="text-decoration:none ; color: white" 
                                       href="#" onclick="doDelete('${u.id}')">Delete</a>
                                </button>
                            </td>



                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>


        <script type="text/javascript">
            function doDelete(id) {
                if (confirm("Are you sure you want to delete this user")) {
                    window.location = "deleteProduct?uDelete=" + id;
                }
            }
        </script>
    </body>
</html>







