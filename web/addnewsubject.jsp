<%-- 
    Document   : addnewsubject
    Created on : Jun 1, 2022, 6:30:29 AM
    Author     : Laptop88
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Course"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Add New Course</title>
        <!--<meta charset="UTF-8">-->
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <link rel="stylesheet" href="css/styles_profile.css">
        <meta charset="utf-8">
        <title>eLEARNING - eLearning HTML Template</title>
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
        <script src="js/myjs.js" ></script>
        <script src="js/dashboard.js" ></script>
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
                                <div class="sidebar-brand-text mx-3 fs-3">Admin</div>
                            </a>
                            <hr class="sidebar-divider my-0">
                            <li class="nav-item active">
                                <a class="nav-link" href="dashboard">
                                    <i class="fas fa-fw fa-tachometer-alt fs-5"></i>
                                    <span class="fs-5">Dashboard</span></a>
                            </li>
                            <hr class="sidebar-divider">
                            
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    <i class="fas fa-fw fa-palette fs-5"></i>
                                    <span class="fs-5">Subject</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>

                <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                    <div class="container px-4 px-lg-5">
                        <div class="row justify-content-center">
                            <h1 class="text-warning text-center m-5">Create New Course</h1>
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-header bg-primary fs-3 fw-bold text-center">Create</div>
                                    <div class="card-body">

                                        <form class="form-horizontal" action="addsubject" method="post">

                                            <div class="form-group">
                                                <label for="categoryid" class="cols-sm-2 control-label fs-4">Category</label>
                                                <select name="categoryid" class="form-select" aria-label="Default select example">
                                                    <c:forEach items="${listcategory}" var="c">
                                                        <option value="${c.id}">${c.name}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="status" class="cols-sm-2 control-label fs-4">Status</label>
                                                <select name="status" class="form-select" aria-label="Default select example">
                                                    <c:forEach items="${liststatus}" var="s">
                                                        <option value="${s.id}">${s.name}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="name" class="cols-sm-2 control-label fs-4">Name</label>
                                                <div class="cols-sm-10">
                                                    <div class="input-group mb-4">
                                                        <span class="input-group-addon"></span>
                                                        <input type="text" class="form-control" name="name" id="name" value="" placeholder="Input the name of course"/>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="thumbnail" class="cols-sm-2 control-label fs-4">Thumbnail</label>
                                                <div class="cols-sm-10">
                                                    <div class="input-group mb-4">
                                                        <span class="input-group-addon"></span>
                                                        <input type="text" class="form-control" name="thumbnail" id="thumbnail" value="" placeholder="Input thumbnail of course"/>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="tagline" class="cols-sm-2 control-label fs-4">Tagline</label>
                                                <div class="cols-sm-10">
                                                    <div class="input-group mb-4">
                                                        <span class="input-group-addon"></span>
                                                        <input type="text" class="form-control" name="tagline" id="tagline" value="" placeholder="Input tagline of course" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="title" class="cols-sm-2 control-label fs-4">Title</label>
                                                <div class="cols-sm-10">
                                                    <div class="input-group mb-4">
                                                        <span class="input-group-addon"></span>
                                                        <input type="text" class="form-control" name="title" id="title" value="" placeholder="Input title of course"/>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="description" class="cols-sm-2 control-label fs-4">Description</label>
                                                <div class="cols-sm-10">
                                                    <div class="input-group mb-4">
                                                        <span class="input-group-addon"></span>
                                                        <input type="text" class="form-control" name="description" id="description" value="" placeholder="Subject Description" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group mb-2">
                                                <input type="checkbox" id="featuresubject" name="featuresubject" >
                                                <label for="featuresubject1">Featured Subject</label><br>
                                            </div>
                                            <c:if test="">
                                                <span class="w-100 mb-4 text-success"></span><br>
                                            </c:if>
                                            <input type="submit" class="btn btn-primary btn-lg btn-primary login-button form-group mb-4" value="Save"/>
                                        </form>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </main>

            </div>
        </div>





        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous">

        </script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>

    </body>
</html>
