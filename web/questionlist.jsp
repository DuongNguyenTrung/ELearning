<!DOCTYPE html>
<html lang="en">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Dashboard - Question</title>

        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="css/sb-admin-2.min.css" rel="stylesheet">
        <link href="css/cusdes.css" rel="stylesheet">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js"
        type="text/javascript"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"
        type="text/javascript"></script>
        <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
              rel="Stylesheet" type="text/css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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

        <!--<script src="js/pagging.js"></script>-->
        <link href="css/pagination.css" rel="stylesheet">
        <link href="css/questionlist.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.5.1/chosen.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.min.css">
        <!--<link rel="stylesheet" href="css/chosen.min.css">-->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.5.1/chosen.jquery.min.js"></script>
        <style>
            table th {
                text-align: center;
            }
            /*                        .chosen {
                                        display: block;
                                        width: 100%;
                                        height: calc(2.25rem + 2px);
                                        padding: 0.375rem 0.75rem;
                                        font-size: 14px;
                                        line-height: 1.5;
                                        color: #495057;
                                        background-color: #fff;
                                        background-clip: padding-box;
                                        border: 1px solid #ced4da;
                                        border-radius: 0.25rem;
                                        transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
                                    }*/

            .chosen-container-single .chosen-single {
                height: 40px !important;
                width: 600px;
            }

            .chosen-container-single .chosen-single>span {
                font-size: 15px;
            }
        </style>
    </head>

    <body id="page-top">

        <!-- Page Wrapper -->
        <div id="wrapper">

            <!-- Sidebar -->
            <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

                <!-- Sidebar - Brand -->
                <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                    <div class="sidebar-brand-icon rotate-n-15">
                        <i class="fas fa-laugh-wink"></i>
                    </div>
                    <div class="sidebar-brand-text mx-3">Hello, ${sessionScope.account.username}</div>
                </a>

                <!-- Divider -->
                <hr class="sidebar-divider my-0">

                <!-- Nav Item - Dashboard -->
                <li class="nav-item active">
                    <a class="nav-link" href="dashboard">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Dashboard</span></a>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider">

                <!-- Heading -->
                <div class="sidebar-heading">
                    Page
                </div>
                <!-- Nav Item - Pages Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                       aria-expanded="true" aria-controls="collapseTwo">
                        <i class="fas fa-fw fa-cog"></i>
                        <span>Course</span>
                    </a>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Custom Course:</h6>
                            <a class="collapse-item" href="buttons.html">View</a>
                            <a class="collapse-item" href="cards.html">Manage</a>
                        </div>
                    </div>
                </li>

                <!-- Nav Item - Utilities Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                       aria-expanded="true" aria-controls="collapseUtilities">
                        <i class="fas fa-fw fa-wrench"></i>
                        <span>Blog</span>
                    </a>
                    <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                         data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Custom Blog:</h6>
                            <a class="collapse-item" href="utilities-color.html">View</a>
                            <a class="collapse-item" href="utilities-border.html">Manage</a>
                        </div>
                    </div>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider">

                <!-- Heading -->
                <div class="sidebar-heading">
                    Addons
                </div>

                <!-- Nav Item - Pages Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                       aria-expanded="true" aria-controls="collapsePages">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>Lesson</span>
                    </a>
                    <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Lesson Custom:</h6>
                            <a class="collapse-item" href="login.html">View</a>
                            <a class="collapse-item" href="register.html">Manage</a>
                            <div class="collapse-divider"></div>
                        </div>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                       aria-expanded="true" aria-controls="collapsePages">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>User</span>
                    </a>
                    <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">User Custom:</h6>
                            <a class="collapse-item" href="login.html">View</a>
                            <a class="collapse-item" href="register.html">Manage</a>
                            <div class="collapse-divider"></div>
                        </div>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#qsbank"
                       aria-expanded="true" aria-controls="qsbank">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>Question</span>
                    </a>
                    <div id="qsbank" class="collapse" aria-labelledby="headingUtilities"
                         data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Question</h6>
                            <a class="collapse-item" href="qsbank">Manage</a>
                        </div>
                    </div>
                </li>

                <!-- Nav Item - Charts -->
                <li class="nav-item">
                    <a class="nav-link" href="charts.html">
                        <i class="fas fa-fw fa-chart-area"></i>
                        <span>Charts</span></a>
                </li>


                <!-- Divider -->
                <hr class="sidebar-divider d-none d-md-block">

                <!-- Sidebar Toggler (Sidebar) -->
                <div class="text-center d-none d-md-inline">
                    <button class="rounded-circle border-0" id="sidebarToggle"></button>
                </div>

            </ul>
            <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">

                    <!-- Topbar -->
                    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                        <!-- Sidebar Toggle (Topbar) -->
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>

                        <!-- Topbar Navbar -->
                        <ul class="navbar-nav ml-auto">

                            <!-- Nav Item - User Information -->
                            <li class="dropdown no-arrow" style="display: flex;">

                                <c:if test="${sessionScope.account!=null}">
                                    <div><a class="nav-item nav-link"  style="color: #06BBCC;" > <i class="fa-solid fa-user"></i> ${sessionScope.account.username}</a></div> 
                                    <div><a href="logout" class="nav-item nav-link" style="font-weight:bold;  padding: 0.54rem; color: #FFFFFF; background-color: #06BBCC;">LOGOUT</a></div>
                                </c:if>
                            </li>
                        </ul>

                    </nav>
                    <!-- End of Topbar -->

                    <!-- Begin Page Content -->

                    <main class=" px-md-4">
                        <div class="card1">
                            <div class="card-header row">
                                <div class="col-md-6">
                                    <h5>Questions List</h5>
                                </div>
                                <div class="col-md-6">
                                    <button class="btn btn-secondary float-end js-qs-import">Question Import</button>
                                </div>
                            </div>

                            <div class="card-header bg-light">
                                <div class="col-md-12">
                                    <form method="GET" action="qsbank">
                                        <div class="form-group row">
                                            <div class="col-md-6">
                                                <label for="course"><h6>Course Name</h6></label><br>
                                                <!--<input type="text" name="course" id="course" placeholder="Enter course name" class="form-control"/>-->
                                                <select class="form-select chosen" id="course" name="course">
                                                    <option  value="">All courses</option>
                                                    <c:forEach items="${requestScope.courses}" var="i">
                                                        <option  value="${i.id}"
                                                                 <c:if test="${requestScope.course == i.id}">
                                                                     selected
                                                                 </c:if>
                                                                 >${i.name}</option>
                                                    </c:forEach>
                                                </select>

                                            </div>
                                            <div class="col-md-6">
                                                <label for="dimension"><h6>Subject Dimension</h6></label>
                                                <!--<input type="text" name="dimension" id="course" placeholder="fix" class="form-control"/>-->
                                                <select class="form-select chosen" id="dimension" name="dimension">
                                                    <option value="">All Dimension</option>
                                                    <c:forEach items="${requestScope.dimensions}" var="i">
                                                        <option value="${i.id}"
                                                                <c:if test="${requestScope.dimension == i.id}">
                                                                    selected
                                                                </c:if>
                                                                >${i.name}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <div class="col-md-6">
                                                <label for="level"><h6>Level</h6></label>
                                                <select class="form-select" id="level" name="level">
                                                    <option value="">All level</option>
                                                    <c:forEach items="${requestScope.levels}" var="i">
                                                        <option value="${i.id}"
                                                                <c:if test="${requestScope.level == i.id}">
                                                                    selected
                                                                </c:if>
                                                                >${i.name}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <div class="col-md-6">
                                                <label for="status"><h6>Status</h6></label>
                                                <select class="form-select" id="status" name="status">
                                                    <option value="">All status</option>
                                                    <option value="0"
                                                            <c:if test="${requestScope.status==0}">
                                                                selected
                                                            </c:if>
                                                            >Hidden</option>
                                                    <option value="1"
                                                            <c:if test="${requestScope.status==1}">
                                                                selected
                                                            </c:if>
                                                            >Visible</option>
                                                </select>
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-primary btn-dark">Search</button>&nbsp;&nbsp;&nbsp;&nbsp;
                                        <!--<button type="reset" class="btn btn-primary mx2">Clear all</button>-->
                                        <a href="qsbank" id="ip1" class="btn btn-primary mx-2" type="button">Clear all</a>
                                        <!--<input style="float:right;" id="ip1" class="btn btn-dark btn-outline-light mb-5 mt-2" type="submit" value="Search">-->
                                    </form>
                                </div>
                            </div>


                            <hr>


                            <div class="mb-4" style="clear: both; border: solid #04707a 1px; margin-top: 30px">
                                <div class="table-responsive">
                                    <table class="table table-hover table-bordered" style="margin-bottom: 0px; font-size: 15px">
                                        <colgroup>
                                            <col width="45" span="2">
                                            <col>
                                            <col width="130" span="3">
                                            <col>
                                            <col width="150">
                                        </colgroup>
                                        <thead>
                                            <tr class="table-primary">
                                                <th scope="col">#</th>
                                                <th scope="col" class="toggle-link">ID</th>
                                                <th scope="col">Content</th>
                                                <th scope="col">Answer</th>
                                                <th scope="col">Course Name</th>
                                                <!--<th>Lesson Name</th>-->
                                                <th scope="col" class="toggle-link">Level</th>
                                                <th scope="col"class="toggle-link">Status</th>
                                                <th scope="col">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:set var="i" value="1"/>
                                            <c:forEach items="${requestScope.qslist}" var="q">
                                                <tr style="line-height: 20px">
                                                    <th scope="row">${i}</th>
                                                    <td style="text-align: center">${q.id}</td>
                                                    <td>${q.content}</td>
                                                    <td>${q.answers.get(0).option}</td>
                                                    <td style="text-align: center">${q.course.name}</td>
                                                    <td style="text-align: center">${q.level.name}</td>

                                                    <td style="text-align: center">
                                                        <c:if test="${q.status == true}">Active</c:if>
                                                        <c:if test="${q.status == false}">Hidden</c:if>
                                                        </td>
                                                        <td style="text-align: center">
                                                            <a href="#" style="font-size: 15px;">View </a> |
                                                            <a href="#" style="font-size: 15px"> Edit </a> |
                                                            <a href="#" style="font-size: 15px"> Delete</a>
                                                        </td>
                                                    <c:set var="i" value="${i+1}"/>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                            <div class="col-lg-12 m-b20">
                                <div class="pagination-bx rounded-sm gray ">
                                    <ul id="pagger" class="pagination" style="display: flex;
                                        padding-left: 0;
                                        list-style: none;
                                        border-radius: 0.25rem;">
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </main>

                </div>
            </div>

            <script>


                scrollWindow();

                // scrolls the window to auto load in middle of page 

                function scrollWindow() {
                    window.scroll(0, 730);
                }

                pagging("pagger", 2,${requestScope.total}, ${requestScope.pageindex}, "${requestScope.url}");
                function pagging(id, gap, totalPage, pageIndex, url_param) {
                    var container = document.getElementById(id);
                    result = '';
                    if (pageIndex - gap > 1) {
                        result += '<li><a  href="' + url_param + 'page=1">First</a></li>';
                    }
                    if (pageIndex > 1) {
                        result += '<li ><a  href="' + url_param + 'page=' + (pageIndex - 1) + '"><i class="ti-arrow-left"></i> Prev</a></li>';
                    }
                    for (var i = pageIndex - gap; i < pageIndex; i++) {
                        if (i > 0) {
                            result += '<li><a  href="' + url_param + 'page=' + i + '">' + i + '</a></li>';
                        }
                    }
                    result += '<li  class="active"><a href="#">' + pageIndex + '</a></li>';

                    for (var i = pageIndex + 1; i <= pageIndex + gap; i++) {
                        if (i <= totalPage) {
                            result += '<li><a  href="' + url_param + 'page=' + i + '">' + i + '</a></li>';
                        }
                    }

                    if (pageIndex < totalPage) {
                        result += '<li><a href="' + url_param + 'page=' + (pageIndex + 1) + '">Next</a></li>';
                    }
                    if (pageIndex + gap < totalPage) {
                        result += '<li"><a href="' + url_param + 'page=' + totalPage + '">Last<i class="ti-arrow-right"></i></a></li>';
                    }
                    container.innerHTML = result;

                }

            </script>

            <!-- pop-up screen import question-->
            <div class="modal js-modal">
                <div class="modal-container js-modal-container">
                    <div class="modal-closse js-modal-close">
                        <!--<i class="ti-close"></i>-->
                        <i class="fa fa-times modal-close-icon" aria-hidden="true"></i>
                    </div>

                    <header class="modal-header">
                        Question Import
                    </header>

                    <div class="modal-body">
                        <form action="importQS" method="post" enctype="multipart/form-data">
                            <div class="row form-group">
                                <div class="col-sm-3 col-form-label">
                                    <label for="courseID" class="modal-label">
                                        <!--<i class="fa-solid fa-book fs-2"></i>-->
                                        <h6><i class="fa-solid fa-book"></i> Course Name:</h6>
                                    </label>
                                </div>
                                <div class="col-sm-9">
                                    <!--<input id="course" type="text" class="form-control" placeholder="Course name?">-->
                                    <select class="form-select " id="courseID" name="courseID">
                                        <option  value="">All courses</option>
                                        <c:forEach items="${requestScope.courses}" var="i">
                                            <option  value="${i.id}">${i.name}</option>
                                        </c:forEach>
                                    </select>

                                </div>
                            </div>

                            <!--                        <div class="row form-group">
                                                        <div class="col-sm-3 col-form-label">
                                                            <label for="lesson" class="modal-label">
                                                                <h6>
                                                                    <i class="fa-solid fa-book-bookmark"></i>
                                                                    Lesson Name:
                                                                </h6>
                                                            </label>
                                                        </div>
                                                        <div class="col-sm-9">
                                                            <select name="lesson" class="form-select">
                                                                <option>Lesson 1</option>
                                                                <option>Lesson 2</option>
                                                            </select>
                                                        </div>
                                                    </div>-->

                            <div class="row form-group">
                                <div class="col-sm-3 col-form-label">
                                    <label for="dimensionID" class="modal-label">
                                        <h6>
                                            <i class="fa-solid fa-book-atlas"></i>
                                            Subject dimension: 
                                        </h6>
                                    </label>
                                </div>
                                <div class="col-sm-9">
                                    <!--<input id="dimension" name="dimension" type="text" class="form-control" placeholder="Subject Dimension">-->
                                    <select class="form-select" id="dimensionID" name="dimensionID">
                                        <option value="">All Dimension</option>
                                        <c:forEach items="${requestScope.dimensions}" var="i">
                                            <option value="${i.id}">${i.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-sm-3 col-form-label">
                                    <label for="qsfile" class="modal-label">
                                        <h6>
                                            <i class="fa-solid fa-file"></i>
                                            Import file: 
                                        </h6>
                                    </label>
                                </div>
                                <div class="col-sm-9">
                                    <input id="qsfile" name="file" type="file" class="form-control" style="display: block"
                                           accept=".xls,.xlsx">
                                </div>
                            </div>

                            <button id="buy-tickets">
                                Save&nbsp;
                                <i class="fas fa-check"></i>
                            </button>
                        </form>
                    </div>

                    <footer class="modal-footer">
                        <p><a href="upload/template.xlsx" 
                              download="format question" >Download</a> the sample import template</p>
                    </footer>
                </div>
            </div>
            <script type="text/javascript">
                $(".chosen").chosen();
            </script>

            <script>
                const QSImports = document.querySelectorAll('.js-qs-import');
                const modal = document.querySelector('.js-modal');
                const modalContainer = document.querySelector('.js-modal-container');
                const modalClose = document.querySelector('.js-modal-close');

                // hàm hi?n th? modal mua vé (thêm class open vào modal)
                function showQSImport() {
                    modal.classList.add('open');
                }

                // hàm ?n modal mua vé (g? b? class open c?a modal)
                function hideQSImport() {
                    modal.classList.remove('open');
                }

                // t?o bi?n m?i là QSImport, và ???c l?u l?n l??t là 3 node c?a mình
                // l?p qua t?ng th? botton và nghe hành vi click
                for (const QSImport of QSImports) {
                    QSImport.addEventListener('click', showQSImport);
                }

                // nghe hành vi click vào button close
                modalClose.addEventListener('click', hideQSImport);

                // ?? khi click vùng ? ngoài modal c?ng ?n ?k modal
                // nh?ng cái nì click ? vùng modal nó cx b? ?n => fix dòng code sau
                modal.addEventListener('click', hideQSImport);

                modalContainer.addEventListener('click', function (event) {
                    event.stopPropagation();
                });
            </script>


            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        <!-- Footer -->
        <footer class="sticky-footer bg-white">
        </footer>
        <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<script src="js/demo/chart-area-demo.js"></script>
<script src="js/demo/chart-pie-demo.js"></script>
<script src="js/demo/chart-column-demo.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"
type="text/javascript"></script>
<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
      rel="Stylesheet"type="text/css"/>
<script type="text/javascript">
                $(function () {
                    $("#txtFrom").datepicker({
                        numberOfMonths: 2,
                        onSelect: function (selected) {
                            var dt = new Date(selected);
                            dt.setDate(dt.getDate() + 1);
                            $("#txtTo").datepicker("option", "minDate", dt);
                        }
                    });
                    $("#txtTo").datepicker({
                        numberOfMonths: 2,
                        onSelect: function (selected) {
                            var dt = new Date(selected);
                            dt.setDate(dt.getDate() - 1);
                            $("#txtFrom").datepicker("option", "maxDate", dt);
                        }
                    });
                });
</script>
<script>
    var link_data = document.getElementsByClassName("toggle-link");
    for (var i = 0; i < link_data.length; i++) {
        console.log(link_data[i].id)
        if ('${requestScope.urlOrder}'.includes("?")) {
            if ('${requestScope.currentUrl}'.includes("desc")) {
                link_data[i].href = '${requestScope.urlOrder}&orderby=' + link_data[i].id + '&direction=asc';
            } else {
                link_data[i].href = '${requestScope.urlOrder}&orderby=' + link_data[i].id + '&direction=desc';
            }
        } else {
            if ('${requestScope.currentUrl}'.includes("desc")) {
                link_data[i].href = '${requestScope.urlOrder}?orderby=' + link_data[i].id + '&direction=asc';
            } else {
                link_data[i].href = '${requestScope.urlOrder}?orderby=' + link_data[i].id + '&direction=desc';
            }
        }

    }
</script>

</body>

</html>