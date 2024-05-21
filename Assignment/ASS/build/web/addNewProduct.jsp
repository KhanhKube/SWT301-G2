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
            <h2 style="color: red">${requestScope.err}</h2>
            <table border="1">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Price</th>
                        <th>Image</th>
                        <th>Quantify</th>
                        <th>Type</th>                      
                        <th>Action</th>
                    </tr>
                </thead>


                <tbody>
                <form action="addProduct" method="post">
                    <tr>                       
                        <td><input class="input-field" required name="name" value=""></td>
                        <td><input class="input-field" required name="des" value=""></td>
                        <td><input class="input-field" type="number" required name="price" value=""></td>
                        <td><input class="input-field" required name="image" value=""></td>
                        <td><input class="input-field" required type="number" name="quantity" ></td>
                        <td>
                            <!--                            <input class="input-field" name="type" >-->
                            <select name="type" class="input-field">
                                <option value="1">Air Force 1</option>
                                <option value="2">Air Jordan</option>
                                <option value="3">Downshifter</option>
                                <option value="4">Dunk</option>
                                <option value="5">Court</option>
                            </select>
                        </td>                       
                        <td><button type="submit" class="action-btn delete-btn">Add</button></td>
                    </tr>
                </form>  
                </tbody>
            </table>

        </div>
    </body>
</html>
