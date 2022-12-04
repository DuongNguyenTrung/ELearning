<%-- 
    Document   : blogDetail
    Created on : Jun 14, 2022, 12:52:25 AM
    Author     : DELL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>eLEARNING - Blogs</title>
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
              rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="css/blogdetail.css" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>

            <div class="all-title-box">
                <div class="container text-center">
                    <h1>Blog Detail</h1>
                </div>
            </div>

            <div id="overviews" class="section wb">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="home">Home</a></li>
                                    <li class="breadcrumb-item"><a href="blogs">Blogs</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Blog Detail</li>
                                </ol>
                            </nav>
                            <div class="blog-item">
                                <div class="image-blog text-center">
                                    <img src="data:image/png;base64,${blog.thumbnail}" alt="" class="img-fluid" width="100%">
                            </div>
                            <div class="blogs-content">
                                <div class="meta-info-blog">
                                    <span><i class="bi bi-calendar-date"></i>&ensp;<a href="#">
                                            <fmt:formatDate pattern="dd/MM/yyyy" value="${requestScope.blog.date}"/>
                                        </a> </span>
                                    <span><i class="bi bi-tag"></i>&ensp;<a href="#">${requestScope.blog.categoryblog.name}</a> </span>
                                    <span><i class="bi bi-person-lines-fill"></i>&ensp;<a href="#">${requestScope.blog.user.username}</a></span>
                                </div>
                                <div class="blog-title">
                                    <h2>${requestScope.blog.title}</h2>
                                </div>
                                <div class="blog-desc">
                                    ${requestScope.blog.description}
                                </div>
                                <div class="author" style="font-style: italic; float: right">Author: ${requestScope.blog.user.username}</div>
                            </div>
                        </div>

                    </div>

                    <div class="col-lg-4 col-12 right-single">
                        <div class="sidebar">
                            <div class="widget-search widget-categories">
                                <h5 class="widget-title">Search</h5>
                                <div class="site-search-area">
                                    <form method="post" id="site-searchform" action="blogs?action=search">
                                        <div>
                                            <input class="input-text form-control" name="content" id="search-k" placeholder="Search keywords..." type="text" value="${requestScope.content}">
                                            <input id="searchsubmit" value="Search" type="submit">
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="widget-categories">
                                <h5 class="widget-title">Categories</h5>
                                <ul>
                                    <c:set var="cid" value="${requestScope.id}"/>
                                    <c:forEach items="${categories}" var="c">
                                        <li><a href="blogs?action=category&id=${c.id}">${c.name}</a></li>
                                        </c:forEach>
                                </ul>
                            </div>

                            <div class="widget-categories">
                                <h5 class="widget-title">Recent blog</h5>
                                <div class="row justify-content-center">
                                    <c:forEach var="o" items="${listTopPost}">
                                        <div class="row p-2" >
                                            <div class=" bg-light row">
                                                <div class="position-relative overflow-hidden col-md-4 image-blog text-center">
                                                    <img class="img-fluid w-100 h-100" src="data:image/png;base64,${o.thumbnail}" alt="">
                                                    <div class="w-100 d-flex justify-content-center position-absolute bottom-0 start-0 mb-4">
                                                        <a href="blogs?action=detail&blog_id=${o.id}" class="flex-shrink-0 btn btn-sm btn-primary px-3 border-end"
                                                           style="border-radius: 30px 0 0 30px;">Read More</a>

                                                    </div>
                                                </div>
                                                <div class=" p-4 pb-0 col-md-8">
                                                    <h6 class="mb-4">${o.title}</h6>

                                                    <p><fmt:formatDate pattern="dd-MM-yyyy" value="${o.date}"/></p>
                                                </div>

                                            </div>
                                        </div>
                                    </c:forEach>  
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>

