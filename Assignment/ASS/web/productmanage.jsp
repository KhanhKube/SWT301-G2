<%-- 
    Document   : productmanage
    Created on : Mar 11, 2024, 9:06:58 AM
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
        </style>
    </head>

    <body>

        <div class="manager-product">
            <h1>Manager Product</h1>
            <a href="listproduct" style="text-decoration: none">Back</a>
            <button class="action-btn edit-btn">
                <a style="text-decoration:none ; color: white" 
                   href="addNewProduct.jsp">Add</a>
            </button>
            <table border="1">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Price</th>
                        <th>Image</th>
                        <th>Quantify</th>
                        <th>Type</th>
                        <th style="text-align: center" colspan="2">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${productM}" var="p">
                        <tr>
                            <td>${p.productName}</td>
                            <td>${p.description}</td>
                            <td>${p.price}</td>
                            <td><img style="width: 50px" src="image/${p.image}"></td>
                            <td>${p.quantity}</td>
                            <c:if test="${p.categoryId == '1'}">
                                <td>Air Force 1</td>
                            </c:if>
                            <c:if test="${p.categoryId == '2'}">
                                <td>Air Jordan</td>
                            </c:if>
                            <c:if test="${p.categoryId == '3'}">
                                <td>Downshifter</td>
                            </c:if>
                            <c:if test="${p.categoryId == '4'}">
                                <td>Dunk</td>
                            </c:if>
                            <c:if test="${p.categoryId == '5'}">
                                <td>Court</td>
                            </c:if>
                            <td><button class="action-btn edit-btn">
                                    <a style="text-decoration:none ; color: white"
                                       href="editproduct?id=${p.productId}">Edit</a>
                                </button>
                            </td>
                            <td>
                                <button class="action-btn delete-btn">
                                    <a style="text-decoration:none ; color: white" 
                                       href="#" onclick="doDelete('${p.productId}')">Delete</a>
                                </button>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>


        <script type="text/javascript">
            function doDelete(id) {
                if (confirm("Are you sure you want to delete this Product")) {
                    window.location = "deleteProduct?pDelete=" + id;
                }
            }
        </script>
    </body>
</html>



