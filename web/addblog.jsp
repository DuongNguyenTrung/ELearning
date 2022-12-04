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
        <title>Add New Blog</title>
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
                <script src="js/dashboard.js" ></script>-->
        <!--<script src="//cdn.ckeditor.com/4.19.0/full/ckeditor.js"></script>-->
        <!--<script src="//cdn.ckeditor.com/4.19.0/standard/ckeditor.js"></script>-->
        <script src="ckeditor/ckeditor.js"></script>
        <!--<script src="ckeditor/adapters/jquery.js"></script>-->
        <style>
            .card_1{
                border: 1px solid rgb(100, 92, 92,0.2);
                padding: 10px;
                box-shadow: 1px 1px 1px 1px;
                border-radius:2%;
            }
        </style>
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
                                <a class="nav-link" href="#">
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
                    <div class="container px-4 px-lg-5">
                        <div class="row justify-content-center">
                            <div class="col-md-12 m-5">
                                <div class="card_1">
                                    <div class="modal-header border-bottom p-3">
                                        <h5 class="text-warning modal-title" id="exampleModalLabel">Create New Post</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" onclick="javascript:window.location = 'postlist'" ></button>
                                    </div>
                                    <div class="card-body">
                                        <form action="newpost" method="POST" enctype="multipart/form-data">
                                            <div class="row gx-5">
                                                <div class="col-lg-8 container-fluid">
                                                    <div class="p-3 border bg-light">
                                                        <div class="mb-3">
                                                            <label class="form-label h5">Post title <span class="text-danger">*</span></label>
                                                            <input name="title" id="name" type="text" class="form-control" required=""
                                                                   placeholder="e.g: Blog about your latest study...">
                                                        </div>

                                                        <div class="mb-3">
                                                            <label class="form-label h5">Post content <span class="text-danger">*</span></label>
                                                            <textarea rows="10" cols="70" id="describe" name="describe" class="form-control" ></textarea>
                                                        </div>
                                                    </div>
                                                    <br>
                                                    <div class="mb-3 p-3 border bg-light">
                                                        <label class="form-label h5">Excerpt <span class="text-danger">*</span></label>
                                                        <p style="font-size: 9; font-style: oblique; color: #666"> &ensp;&ensp; Add a summary of the post to appear on the home page or blog</p>
                                                        <textarea rows="" cols="" id="brief" name="brief" class="form-control" style="width: 720px; height:50px"></textarea>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4 container-fluid">
                                                    <div class="mb-3 p-3 border bg-light">
                                                        <label class="form-label h6">Category of Post <span class="text-danger">*</span></label>
                                                        <select name="cid" class="form-select" aria-label="Default select example">
                                                            <c:forEach items="${categories}" var="c">
                                                                <option value="${c.id}">${c.name}</option>
                                                            </c:forEach>
                                                        </select> 
                                                    </div>
                                                    <div class="mb-3 p-3 border bg-light">
                                                        <label class="form-label h6">Featured image <span class="text-danger">*</span></label>
                                                        <div class="form-group">
                                                            <div class="">
                                                                <div class="profile-pic text-center">
                                                                    <label class="-label" for="file">
                                                                        <img src="img/upload.png" id="output" width="200" alt="" class="img-thumbnail"/>
                                                                    </label>
                                                                    <br>
                                                                    <input id="file" type="file" onchange="loadFile(event)" name="image"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="p-3 border bg-light">
                                                        <div class="mb-3">
                                                            <label class="form-label h6">Nổi bật <span class="text-danger"></span></label>
                                                            <div class="form-check">
                                                                <input class="" type="radio" name="featured" id="credit" value="true" checked>
                                                                <label class="form-check-label"> Yes </label>
                                                            </div>
                                                            <div class="form-check">
                                                                <input class="" type="radio" name="featured" id="debit" value="false">
                                                                <label class="form-check-label"> No </label>
                                                            </div>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label class="form-label h6">Visibility <span class="text-danger"></span></label>
                                                            <div class="form-check">
                                                                <input class="" type="radio" name="status" id="credit" value="true" checked>
                                                                <label class="form-check-label">
                                                                    Visible
                                                                </label>
                                                            </div>
                                                            <div class="form-check">
                                                                <input class="" type="radio" name="status" id="debit" value="false">
                                                                <label class="form-check-label">
                                                                    Hidden
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="">
                                                    <button type="submit" class="btn btn-primary btn-lg">Create</button>
                                                </div>
                                            </div>
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
        <script>
                                                                        CKEDITOR.replace('brief');
                                                                        CKEDITOR.replace('describe');
//                                                                        
                                                                        var loadFile = function (event) {
                                                                            var output = document.getElementById('output');
                                                                            var removepic = document.getElementById('remove-pic');
                                                                            output.src = URL.createObjectURL(event.target.files[0]);
                                                                            output.onload = function () {
                                                                                URL.revokeObjectURL(output.src) // free memory
                                                                                removepic.style.display = "block";
                                                                            }

                                                                        };
        </script>
    </body>
</html>


