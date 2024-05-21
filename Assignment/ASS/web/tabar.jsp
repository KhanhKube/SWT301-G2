<%-- 
    Document   : tabar
    Created on : Mar 4, 2024, 11:34:31 PM
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

        <script>
            document.addEventListener("DOMContentLoaded", function () {
                var profileName = document.getElementById("profileName");
                var profileList = document.getElementById("profileList");

                profileName.addEventListener("click", function () {
                    var computedStyle = window.getComputedStyle(profileList);
                    if (computedStyle.display === "none") {
                        profileList.style.display = "block";
                    } else {
                        profileList.style.display = "none";
                    }
                });
            });

        </script>
    </head>
    <body>
        <section style="width: 0% ;height: 0%">
            <nav>
                <div class="logo">
                    <h1>
                        Akum<span>a</span>
                        Shoe<span>s</span>
                    </h1>
                </div>

                <ul>
                    <li><a href="listproduct">Home</a></li>
                    <li><a href="listproduct?#Products">Products</a></li>
                    <li><a href="listproduct?#About">About</a></li>
                    <li><a href="listproduct?#Review">Review</a></li>
                    <li>                   
                        <a href="#">Nike</a>
                        <ul id="sub_menu">
                            <c:forEach items="${ListCategory}" var="categories">
                                <li><a href="category?cid=${categories.getCategoriesId()}">${categories.getCategoriesName()}</a></li>
                                </c:forEach>
                        </ul>
                    </li>
                </ul>
                <form action="search" method="post">
                    <div class="searchBox">                  
                        <input class="searchInput" type="search" name="search" placeholder="Search">
                        <button type="submit" class="searchButton" href="#">
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </button>
                </form>
                </div>
                <div class="icon">
                    <i class="fa-solid fa-heart"></i>
                    <i class="fa-solid fa-cart-shopping"></i>
                    <i class="fa-solid fa-user"></i>
                    <i>
                        <c:if test="${sessionScope.user != null}">
                            <div  style="display: inline-block ; padding: 20px"class="profile-name" id="profileName" >
                                ${sessionScope.user.username}
                                <i class="fa-solid fa-angle-down"></i>
                            </div>
                        </c:if>

                        <c:if test="${sessionScope.user == null}">
                            <button  class="profile-name" id="loginsb" >
                                <a style="text-decoration: none;color: black" href="login.jsp">Login</a>                          
                            </button>
                        </c:if>
                        <div  class="profile-list" id="profileList">
                            <ul class="list">
                                <c:if test="${sessionScope.user.role == '0'}">
                                    <li>
                                        <a href="editUser?roll=${sessionScope.user.id}">Edit Profile</a>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.user.role != '0'}">
                                    <li>
                                        <a href="editUser?roll=${sessionScope.user.id}">Edit Profile</a>
                                    </li>
                                    <li>
                                        <a href="statistic">Manager</a>
                                    </li>
                                    <li>
                                        <a href="productmanage?idP=${sessionScope.user.id}">Product</a>
                                    </li>
                                    <li>
                                        <a href="listUser">User</a>
                                    </li>
                                </c:if>
                                <hr>
                                <li>
                                    <a href="logout">Log out</a>
                                </li>
                            </ul>
                        </div>
                    </i>
                </div>
            </nav>
        </section>
    </body>
</html>
