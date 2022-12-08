
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
        <style>
            .card {
                background-color: #fff;
                border: none;
            }

            .form-color {
                background-color: #fafafa;
            }

            .form-control {
                height: 48px;
                border-radius: 25px;
            }

            .form-control:focus {
                color: #495057;
                background-color: #fff;
                border-color: #35b69f;
                outline: 0;
                box-shadow: none;
                text-indent: 10px;
            }

            .c-badge {
                background-color: #35b69f;
                color: white;
                height: 20px;
                font-size: 11px;
                width: 92px;
                border-radius: 5px;
                display: flex;
                justify-content: center;
                align-items: center;
                margin-top: 2px;
            }

            .comment-text {
                font-size: 13px;
            }

            .wish {
                color: #35b69f;
            }

            .user-feed {
                font-size: 14px;
                margin-top: 12px;
            }
        </style>
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
        <div class="container mt-5 mb-5">
            <div class="row height d-flex justify-content-start align-items-center">
                <div class="col-md-7">
                    <div class="">
                        <div class="p-3">
                            <h6>Comments</h6>
                        </div>
                        <div class="mt-3 d-flex flex-row align-items-center p-3 form-color">
                            <img
                                src="https://i.imgur.com/zQZSWrt.jpg"
                                width="50"
                                class="rounded-circle mr-2"
                                />
                            <form action="blogs" method="post">
                                <input hidden="" name="bid" value="${bid}"/>
                                <input
                                    type="text"
                                    name="cmt"
                                    class="form-control"
                                    placeholder="Enter your comment..."
                                    />
                                <button class="btn btn-success">Send</button>
                            </form>
                        </div>
                        <c:forEach items="${comments}" var="c">
                            <div class="mt-2">
                                <div class="d-flex flex-row p-3">
                                    <img
                                        src="./${c.avatar}"
                                        width="40"
                                        height="40"
                                        class="rounded-circle mr-3"
                                        />
                                    <div class="w-100">
                                        <div
                                            class="d-flex justify-content-between align-items-center"
                                            >
                                            <div class="d-flex flex-row align-items-center">
                                                <span class="mr-2">${c.fullname}</span>
                                                <small class="c-badge">Top Comment</small>
                                            </div>
                                            <small>${c.createAt}</small>
                                        </div>
                                        <p class="text-justify comment-text mb-0">
                                            ${c.cmt}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp"></jsp:include>


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>

    </body>
</html>

