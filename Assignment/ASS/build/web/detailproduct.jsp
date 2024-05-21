<%-- 
    Document   : detailproduct
    Created on : Mar 10, 2024, 2:34:56 AM
    Author     : admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Product Image Change</title>
        <link rel = "stylesheet" href = "style2.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <body>
        <%@include file="tabar.jsp" %>
        <div class = "main-wrapper">
            <div class = "container">
                <div class = "product-div">
                    <c:forEach items="${ListProduct}" var="product">
                        <div class = "product-div-left">
                            <div class = "img-container">
                                <img src="image/${product.getImage()}">
                            </div>                 
                        </div>
                        <div class = "product-div-right">
                            <span class = "product-name">${product.getProductName()}</span>
                            <span class = "product-price">${product.getPrice()}$</span>
                            <div class = "product-rating">
                                <span><i class = "fas fa-star"></i></span>
                                <span><i class = "fas fa-star"></i></span>
                                <span><i class = "fas fa-star"></i></span>
                                <span><i class = "fas fa-star"></i></span>
                                <span><i class = "fas fa-star"></i></span>

                            </div>
                            <p class = "product-description">${product.getDescription()}</p>
                            <div class = "btn-groups">
                                <button type = "button" class = "add-cart-btn"><i class = "fas fa-shopping-cart"></i>add to cart</button>
                                <button type = "button" class = "buy-now-btn"><i class = "fas fa-wallet"></i>buy now</button>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
