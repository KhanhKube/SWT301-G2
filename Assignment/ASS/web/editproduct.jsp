<%-- 
    Document   : editproduct
    Created on : Mar 11, 2024, 10:13:07 AM
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

            .input-field {
                padding: 8px 12px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
                width: 100%; /* Độ rộng sẽ giãn toàn bộ chiều rộng của ô input */
                margin-top: 6px;
                margin-bottom: 16px;
                resize: vertical; /* Cho phép điều chỉnh chiều cao dọc */
            }

            .input-field:focus {
                border-color: #007bff; /* Màu viền khi trường input được focus */
            }
        </style>
    </head>

    <body>

        <div class="manager-product">
            <h1>Manager Product</h1>
            <a href="productmanage?idP=${sessionScope.user.id}" style="text-decoration: none">Back</a>
            <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Price</th>
                        <th colspan="2">Image</th>
                        <th>Quantify</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                <c:set var="p" value="${requestScope.productM}"/>  
                <form action="editproduct" method="post">
                    <tr>
                        <td><input class="input-field" type="hidden" name="id" readonly value="${p.productId}"></td>
                        <td><input class="input-field" name="name" required value="${p.productName}"></td>
                        <td><input class="input-field" name="des" required value="${p.description}"></td>
                        <td><input class="input-field" type="number" required name="price" value="${p.price}"></td>
                        <td><img style="width: 50px" src="image/${p.image}"></td>
                        <td><input class="input-field" name="image" required value="${p.image}"></td>
                        <td><input class="input-field" name="quantity" required value="${p.quantity}"></td>
                        <td><button type="submit" class="action-btn delete-btn">Update</button></td>
                    </tr>
                </form>  
                </tbody>
            </table>

        </div>
    </body>
</html>
