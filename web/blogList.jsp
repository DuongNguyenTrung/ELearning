<%-- 
    Document   : blogList
    Created on : May 27, 2022, 12:01:03 AM
    Author     : DELL
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <link href="css/blog.css" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="blogs-content" style="margin-top: 2rem !important">
                <div class="row g-4 justify-content-center">
                    <div class="col-8">
                        <div class="container-xxl">
                            <div class="container">
                                <div class="text-center " >
                                    <h3><a href="blogs" class="section-title bg-white text-center text-primary">Blogs</a></h3>
                                </div>
                                <div class="row justify-content-center">
                                <c:forEach var="b" items="${requestScope.listblog}">
                                    <div class="row p-4" >
                                        <div class="blog-item bg-light row">
                                            <div class="position-relative overflow-hidden col-md-4">
                                                <img class="img-fluid h-100 w-100" src="data:image/png;base64,${b.thumbnail}" alt="">
                                            </div>
                                            <div class=" p-4 pb-0 col-md-8 position-relative d-block overflow-hidden">
                                                <a href="blogs?action=detail&blog_id=${b.id}">
                                                    <h4 class="mb-4">${b.title}...</h4>
                                                </a>
                                                <p style="font-size: 9">${b.brief}</p>
                                                <p>
                                                    <fmt:formatDate pattern="dd-MM-yyyy" value="${b.date}"/>
                                                </p>
                                                <div class="bg-gray text-center position-absolute bottom-0 end-0 py-2 px-3"
                                                     style="margin: 1px;">
                                                    <h6>${b.categoryblog.name}</h6>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                                <div class="text-center">
                                    <c:set var="page" value="${requestScope.page}"/>
                                    <div class="pagination">
                                        <c:forEach begin="${1}" end="${requestScope.num}" var="i">
                                            <c:if test="${requestScope.type == 0}">
                                                <a class="${i==page?"active":""}" href="blogs?page=${i}">${i}</a>
                                            </c:if>
                                            <c:if test="${requestScope.type == 1}">
                                                <a class="${i==page?"active":""}" href="blogs?action=search&content=${requestScope.content}&page=${i}">${i}</a>
                                            </c:if>
                                            <c:if test="${requestScope.type == 2}">
                                                <a class="${i==page?"active":""}" href="blogs?action=category&id=${requestScope.id}&page=${i}">${i}</a>
                                            </c:if>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-4 side">
                    <div class="container-xxl shadow">
                        <div class="container" style="padding-top: 20px">
                            <div class="widget mb-4 pb-2">
                                <h5 class="widget-title">Search</h5>
                                <div id="search2" class="widget-search mt-4 mb-0">
                                    <form action="blogs?action=search" method="POST" id="searchform" class="searchform">
                                        <div>
                                            <input value="${requestScope.content}" type="text" class="border rounded" name="content" id="s" placeholder="Search blog ...">
                                            <input type="submit" id="searchsubmit" value="Search">
                                        </div>
                                    </form>
                                </div>
                            </div>

                            <div class="widget mb-4 pb-2">
                                <h5 class="widget-title">Categories</h5>
                                <div class="tagcloud mt-4 tab">
                                    <c:set var="cid" value="${requestScope.id}"/>
                                    <c:forEach items="${categories}" var='c'>
                                        <a href="blogs?action=category&id=${c.id}" 
                                           class="${c.id==cid?"active":""}">${c.name}</a></br>
                                    </c:forEach>

                                </div>
                            </div>

                            <div class="widget mb-4 pb-2">
                                <h5 class="widget-title">Recent blog</h5>
                                <div class="row justify-content-center">
                                    <c:forEach var="o" items="${listTopPost}">
                                        <div class="row p-4" >
                                            <div class="blog-item bg-light row">
                                                <div class="overflow-hidden col-md-4">
                                                    <img class="img-fluid h-100 w-100" 
                                                         src="data:image/png;base64,${o.thumbnail}" alt="">
                                                </div>
                                                <div class=" p-4 pb-0 col-md-8">
                                                    <a href="blogs?action=detail&blog_id=${o.id}">
                                                        <h6 class="mb-4">${o.title} ....</h6>
                                                    </a>
                                                    <p>
                                                        <fmt:formatDate pattern="dd-MM-yyyy" value="${o.date}"/>
                                                    </p>
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



