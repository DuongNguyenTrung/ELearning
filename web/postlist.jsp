<%-- 
    Document   : addblog
    Created on : Jun 13, 2022, 8:14:39 AM
    Author     : DELL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Post List</title>
        <!--<meta charset="UTF-8">-->
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <link rel="stylesheet" href="css/styles_profile.css">
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">
        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
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
<!--        <script src="js/myjs.js" ></script>
        <script src="js/dashboard.js" ></script>
        <style>
            /*            .card_1{
                            padding: 10px;
                            box-shadow: 1px 1px 1px 1px;
                        }*/
        </style>-->
    </head>
    <body>

        <header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
            <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="#">eLEARNING</a>
            <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!--<input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">-->
            <div class="navbar-nav">
                <div class="nav-item text-nowrap mx-2">
                    <a class="nav-link " href="logout" role="button" 
                       aria-haspopup="true" aria-expanded="false">
                        <span class="ml-2 d-none d-lg-inline text-white small fs-5">Log Out</span>
                    </a>
                </div>
            </div>
        </header>

        <div class="container-fluid">
            <div class="row">
                <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
                    <div class="position-sticky pt-3">
                        <ul class="navbar-nav sidebar sidebar-light accordion" id="accordionSidebar">
                            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
                                <div class="sidebar-brand-icon">
                                    <img class="img-profile rounded-circle"
                                         src="${sessionScope.account.avatar}"
                                         style="max-width: 40px">
                                </div>
                                <div class="sidebar-brand-text mx-3 fs-3">Marketing</div>
                            </a>
                            <hr class="sidebar-divider my-0">
                            <li class="nav-item active">
                                <a class="nav-link" href="dashboard">
                                    <i class="fas fa-fw fa-tachometer-alt fs-5"></i>
                                    <span class="fs-5">Dashboard</span></a>
                            </li>
                            <hr class="sidebar-divider">

                            <li class="nav-item">
                                <a class="nav-link" href="postlist">
                                    <i class="fas fa-fw fa-palette fs-5"></i>
                                    <span class="fs-5">Manage Post</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="newpost">
                                    <i class="fas fa-fw fa-palette fs-5"></i>
                                    <span class="fs-5">Add Post</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>


                <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                    <div id="formsearch" class="my-5">
                        <form class="requires-validation">
                            <div class="d-flex justify-content-between">
                                <input style="display: none;"/>
                                <div class="col-md-3" style="margin-left:5px">
                                    <label class="" for="name">Author</label>
                                    <input id="name" class="form-control"/>
                                </div>
                                <div class="col-md-3" style="margin-left: 5px">
                                    <label class="" for="title">Title</label>
                                    <input class="form-control"/>
                                </div>
                                <div class="col-md-3" style="margin-left:  5px">
                                    <label class="" for="category">Category Post</label>
                                    <select class="form-select">
                                        <option>All Category Post</option>
                                        <c:forEach var="c" items="${categories}">
                                            <option>${c.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="col-md-3" style="margin-left: 5px">
                                    <label class="" for="name">Status</label>
                                    <select class="form-select">
                                        <option>All Status</option>
                                        <option>Visible</option>
                                        <option>Hidden</option>
                                    </select>
                                </div>
                            </div>
                            <input style="float:right;" id="ip1" class="btn btn-dark btn-outline-light mb-5 mt-2" type="submit" value="Search">
                            <a href="subjectlist" style="float:right;" id="ip1" class="btn btn-primary   mb-5 mt-2 mx-2" type="button">Reset</a>

                        </form>
                    </div>
                    <a href="newpost" id="ip1" class="btn btn-primary   mb-5 mt-2 mx-2" type="button">Add New Post</a>

                    <div class="mb-4" style="clear: both; border: solid #04707a 1px;">
                        <div class="table-responsive">
                            <table class="table table-hover" style="margin-bottom: 0px; font-size: 15px;">
                                <thead>
                                    <tr class="table-primary">
                                        <th>#</th>
                                        <th>ID</th>
                                        <th>Thumbnail</th>
                                        <th>Title</th>
                                        <th>Category</th>
                                        <th>Author</th>
                                        <th>Feature</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:set var="i" value="1"/>
                                    <c:forEach items="${requestScope.blogs}" var="p">
                                        <tr style="line-height: 45px">
                                            <td>${i}</td>
                                            <td>${p.id}</td>
                                            <td><img src="data:image/png;base64,${p.thumbnail}" width="50px" height="50px" style="object-fit: cover"></td>
                                            <td>${p.title}</td>
                                            <td>${p.categoryblog.name}</td>
                                            <td>${p.user.fullname}</td>
                                            <td>
                                                <c:if test="${p.flag == true}"><i class="bi bi-toggle-on"></i></c:if>
                                                <c:if test="${p.flag == false}"><i class="bi bi-toggle-off"></i></c:if>
                                                </td>
                                                <td>
                                                <c:if test="${p.status == true}">Active</c:if>
                                                <c:if test="${p.status == false}">Hidden</c:if>
                                                </td>
                                                <td>
                                                    <a href="viewpost?postid=${p.id}" style="font-size: 15px;">View </a>|
                                                <a href="editpost?blogid=${p.id}" style="font-size: 15px">Edit</a>
                                            </td>
                                            <c:set var="i" value="${i+1}"/>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </main>

            </div>
        </div>

        <nav aria-label="Page navigation" id="pager" class="demo2">
            <ul class="pagination justify-content-end pagination-sm mr-5">
                <c:set var="page" value="${pageindex}"/>
                <c:forEach begin="${1}" end="${requestScope.total}" var="i">
                    <li class="page-item">
                        <a class="page-link ${i==page?"active":""}" href="postlist?page=${i}">${i}</a>
                    </li>
                    <!--<a class="${i==page?"active":""}" href="postlist?page=${i}">${i}</a>-->
                </c:forEach>
            </ul>
        </nav>

        <style>
            .demo2 a.active {
                background-color: #ffff33;
            color: #000;
            }
            .demo2 a:hover:not(.active) {
            opacity: 0.7;
            }
        </style>
        <jsp:include page="footer.jsp"></jsp:include>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous">

        </script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
    </body>
</html>


