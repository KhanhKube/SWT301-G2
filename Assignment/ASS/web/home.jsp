<%-- 
    Document   : home
    Created on : Mar 3, 2024, 2:58:48 PM
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
                top: 260px;
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
        <!--Section-->  
        <section>
            <div class="main" id="Home">
                <div class="main_content">
                    <div class="main_text">
                        <h1>NIKE<br><span>Collection</span></h1>
                        <p>
                            The Nike shoe brand is not only famous for the top sneakers in the world, but is also the top
                            choice of sports shoe lovers. Every year, Nike launches a series of new products with diverse
                            designs, but for sneakerheads, Nike always holds an irreplaceable place in their hearts. Join us
                            to learn about this brand and the genuine Nike men's shoe products available at Akuma Shoes.
                        </p>
                    </div>
                    <div class="main_image">
                        <img src="image/shoes.png">
                    </div>
                </div>
                <div class="social_icon">
                    <i class="fa-brands fa-facebook"></i>
                    <i class="fa-brands fa-twitter"></i>
                    <i class="fa-brands fa-instagram"></i>
                    <i class="fa-brands fa-linkedin-in"></i>
                </div>
                <div class="button">
                    <a href="#Products">Buy now</a>
                    <i class="fa-solid fa-chevron-right"></i>
                </div>
            </div>
        </section>
        
         <%@include file="About.jsp" %>
        <!-- Products -->
        <div  class="products" id="Products">
            <h1 style="margin-top: 120px">Products</h1>

            <div class="box" style="position: absolute ; margin-left: 70px"  >
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

        <div style="color: red" class="pagination" >
            <a href="#">&laquo;</a>
            <c:forEach begin="1" end="${endP}" var="i">
            <a href="listproduct?index=${i}&&#Products">${i}</a>
            </c:forEach>
            <a href="">&raquo;</a>
        </div>

       
        <!-- Review -->

        <div style="margin: 120px 0px" class="review" id="Review">
            <h1>Customer's<span>review</span></h1>

            <div class="review_box">
                <div class="review_card">
                    <div class="card_top">
                        <div class="profile">

                            <div class="profile_image">
                                <img src="image/girl_dp1.jpg">
                            </div>

                            <div class="name">
                                <strong>Ranidi Lochana</strong>

                                <div class="like">
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                </div>

                            </div>

                        </div>
                    </div>
                    <div class="comment">
                        <p>
                            I am completely satisfied with my shopping experience on this website! 
                            The variety of products and the quality of customer service both exceeded my expectations.
                        </p>
                    </div>
                </div>

                <div class="review_card">
                    <div class="card_top">
                        <div class="profile">

                            <div class="profile_image">
                                <img src="image/gir_dp2.jpg">
                            </div>

                            <div class="name">
                                <strong>Laver Limit</strong>

                                <div class="like">
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                </div>

                            </div>

                        </div>
                    </div>
                    <div class="comment">
                        <p>
                            Simply amazing! I found the perfect shoes for myself here. 
                            Delivery service was prompt and product arrived in perfect condition.
                        </p>
                    </div>
                </div>
                <div class="review_card">
                    <div class="card_top">
                        <div class="profile">

                            <div class="profile_image">
                                <img src="image/gir_dp3.jpg">
                            </div>

                            <div class="name">
                                <strong>Belext Master</strong>

                                <div class="like">
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                </div>

                            </div>

                        </div>
                    </div>
                    <div class="comment">
                        <p>
                            This website not only offers the latest fashion shoes but also high quality products. 
                            I always feel confident when shopping here and will continue to support in the future
                        </p>
                    </div>
                </div>

            </div>

            <div class="review_box">
                <div class="review_card">
                    <div class="card_top">
                        <div class="profile">

                            <div class="profile_image">
                                <img src="image/man_dp1.jpg">
                            </div>

                            <div class="name">
                                <strong>Amber AnhTai</strong>

                                <div class="like">
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                </div>

                            </div>

                        </div>
                    </div>
                    <div class="comment">
                        <p>
                            Very impressed with the professionalism of this site! Easy-to-use interface, clear product information and simple payment process. 
                            I found exactly what I needed in just a few minutes.
                        </p>
                    </div>
                </div>

                <div class="review_card">
                    <div class="card_top">
                        <div class="profile">

                            <div class="profile_image">
                                <img src="image/man_dp2.jpg">
                            </div>

                            <div class="name">
                                <strong>Thormy Shellby</strong>

                                <div class="like">
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                </div>

                            </div>

                        </div>
                    </div>
                    <div class="comment">
                        <p>
                            I have purchased many times on this site and have never been disappointed.
                            Thanks for the variety of products and excellent customer service.
                        </p>
                    </div>
                </div>
                <div class="review_card">
                    <div class="card_top">
                        <div class="profile">

                            <div class="profile_image">
                                <img src="image/man_dp3.jpg">
                            </div>

                            <div class="name">
                                <strong>Iron man</strong>

                                <div class="like">
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                </div>

                            </div>

                        </div>
                    </div>
                    <div class="comment">
                        <p>
                            I am very satisfied with the website's service as well as the fast shipping team, 
                            and the product quality is exactly as advertised by the shop.
                        </p>
                    </div>
                </div>

            </div>
        </div>


        <!-- Footer -->
        <footer>
            <div class="footer_main">
                <div class="tag">
                    <h1>Contact</h1>
                    <a href="#"><i class="fa-solid fa-house"></i>123/FPT/Hanoi</a>
                    <a href="#"><i class="fa-solid fa-phone"></i>+84 123 123 1330</a>
                    <a href="#"><i class="fa-solid fa-envelope"></i>AkumaShoes@email.com.vn</a>
                </div>

                <div class="tag">
                    <h1>Get Help</h1>
                    <a href="#" class="center">FAQ</a>
                    <a href="#" class="center">Shipping</a>
                    <a href="#" class="center">Returns</a>
                    <a href="#" class="center">Payment Options</a>
                </div>

                <div class="tag">
                    <h1>Our Stores</h1>
                    <a href="#" class="center">Sri Lanka</a>
                    <a href="#" class="center">USA</a>
                    <a href="#" class="center">VietNam</a>
                    <a href="#" class="center">Japan</a>
                </div>

                <div class="tag">
                    <h1>Follow US</h1>
                    <div class="social_link">
                        <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                        <a href="#"><i class="fa-brands fa-twitter"></i></a>
                        <a href="#"><i class="fa-brands fa-instagram"></i></a>
                        <a href="#"><i class="fa-brands fa-twitter"></i></a>
                    </div>
                </div>

                <div class="tag">
                    <!-- <h1>Newsletter</h1>
                    <div class="search_bar">
                        <input type="text" placeholder="Your email id here">
                        <button type="submit">Subscribe</button>                  
                    </div> -->
                    <img src="image/OIG3.jpg">
                </div>
            </div>

        </footer>
    </body>

</html>
