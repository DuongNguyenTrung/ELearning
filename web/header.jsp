<%-- 
    Document   : header
    Created on : May 31, 2022, 9:21:45 AM
    Author     : Laptop88
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
            <a href="home" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
                <h2 class="m-0 text-primary"><i class="fa fa-book me-3"></i>eLEARNING</h2>
            </a>
            <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto p-4 p-lg-0">
                    <a href="home" class="nav-item nav-link active">Home</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Learning</a>
                        <div class="dropdown-menu fade-down m-0">
                            <a href="#" class="dropdown-item">Topic 1</a>
                            <a href="#" class="dropdown-item">Topic 2</a>
                            <a href="#" class="dropdown-item">Topic 3</a>
                        </div>
                    </div>
                    <a href="Course" class="nav-item nav-link">Courses</a>
                    <a href="blogs" class="nav-item nav-link">Blog</a>
                    <a href="#" class="nav-item nav-link">Contact</a>

                    <input class="search" type="text" value="">
                    <input style="margin-right: 0.8rem;" class="search1 btn btn-primary" type="submit" value="Search">
                </div>

                <c:if test="${sessionScope.account==null}">
                    <a href="#" data-bs-target="#loginModal" data-bs-toggle="modal" class=" login-triggerbtn btn-primary py-4 px-lg-5 d-none d-lg-block"style="color: #FFFFFF;" type="button">Join Now<i
                            class="fa fa-arrow-right ms-3"></i></a>
                    </c:if>
                    <c:if test="${sessionScope.account!=null}">
                    <div class="dropdown">

                        <a id="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false" class="nav-item nav-link"> <i class="fa-solid fa-user"></i> ${sessionScope.account.username}</a>

                        <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
                            <li><button data-bs-toggle="modal" data-bs-target="#profilesetting" href="#" class="dropdown-item"  type="button">Profile</button></li>
                            <li><a class="dropdown-item" href="mycourse">My course</a></li>

                        </ul>
                    </div>
                    <!--<a data-bs-toggle="modal" data-bs-target="#profilesetting" href="#" class="nav-item nav-link"> <i style="margin-left: 0.8rem;" class="fa-solid fa-user"></i> ${sessionScope.account.username}</a>-->
                    <a href="logout" class="nav-item nav-link" style="font-weight:bold;  padding: 0.54rem; color: #FFFFFF; background-color: #06BBCC;">LOGOUT</a>
                </c:if>

            </div>
        </nav>
        <!-- Navbar End -->
    </body>
</html>
