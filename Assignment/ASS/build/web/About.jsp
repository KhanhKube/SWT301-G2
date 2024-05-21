<%-- 
    Document   : About
    Created on : Mar 7, 2024, 12:58:17 AM
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
        <!-- About --> 
        <div style="margin-bottom: 10px" class="about" id="About">

            <h1 style="margin-bottom: 150px">Web<span>About</span></h1>

            <div class="about_main">
                <div class="about_image">
                    <div class="about_small_image">
                        <c:forEach items="${ListProduct2}" begin="1" end="4" var="product">
                            <img src="image/${product.getImage()}" onclick="functio(this)">
                        </c:forEach>
                    </div>
                    
                    <div class="image_contaner">
                        <c:forEach items="${ListProduct2}" begin="0" end="0" var="product">
                        <img src="image/${product.getImage()}" id="imagebox">
                        </c:forEach>
                    </div>

                </div>

                <div class="about_text">
                    <p>
                        Akuma Shoes is a website that sells stylish and unique shoes. With the combination of quality and
                        beautiful design, Akuma Shoes has quickly attracted the attention of fashion and shoe lovers.
                        Diverse products: From sports shoes to loafers, from retro style to modernity, Akuma Shoes has a
                        range of products to meet all your needs. Superior quality: Shoes at Akuma Shoes are made from high
                        quality materials, ensuring comfort and durability. Unique design Unique: Akuma Shoes is not only a
                        place for you to buy shoes, but also a place for you to express your own style. Unique and creative
                        designs will help you stand out in the crowd. Dedicated customer service: Akuma Shoes's support team
                        is always ready to answer any questions and ensure you have the best shopping experience .<br>
                        Visit Akuma Shoes today to explore the world of diverse and stylish footwear!
                    </p>
                </div>

            </div>

            <a href="#" style=" left: 45%;" class="about_btn">Shop Now</a>

            <script>
                function functio(small) {
                    var full = document.getElementById("imagebox")
                    full.src = small.src
                }
            </script>
        </div>

    </body>
</html>
