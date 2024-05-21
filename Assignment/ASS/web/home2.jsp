<%-- 
    Document   : home2
    Created on : Mar 11, 2024, 11:41:07 AM
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
            .pagination {
                display: inline-block;
                position: relative;
                top: 190px;
                left: 80px;
            }

            .pagination a {
                color: black;
                float: left;
                padding: 8px 16px;
                text-decoration: none;
                transition: background-color .3s;
                border: 1px solid #ddd;
                margin: 0 4px;
            }

            .pagination a.active {
                background-color: #4CAF50;
                color: white;
                border: 1px solid #4CAF50;
            }

            .pagination a:hover:not(.active) {
                background-color: #ddd;
            }
        </style>
    </head>
    <body>
        <%@include file="tabar.jsp" %>
        <div  class="products" id="Products">
            <h1>Products</h1>
            <h2 style="color: red ; text-align: center">${errow}</h2>
            <div class="box" style="position: absolute ; margin-left: 65px"  >
                <c:forEach items="${ListProduct}" var="product">

                    <div style="height: 480px " class="card">

                        <div style="margin-right: 50px " class="small_card">
                            <i class="fa-solid fa-heart"></i>
                            <i class="fa-solid fa-cart-shopping"></i>
                        </div>

                        <div class="image" >
                            <img src="image/${product.getImage()}">
                        </div>

                        <div class="products_text">

                            <h2>${product.getProductName()}</h2>
                            <p>
                                ${product.getDescription()}
                            </p>
                            <h3>${product.getPrice()}$</h3>
                            <div class="products_star">
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                            </div>
                            <a href="detailp?iddt=${product.getProductId()}" class="btn">Buy Now</a>
                        </div>
                    </div>
                </c:forEach>
            </div>    
        </div>
    </body>
</html>
