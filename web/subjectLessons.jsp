<%-- 
    Document   : subjectLessons
    Created on : Jun 1, 2022, 11:26:46 PM
    Author     : Admin
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>eLEARNING - Dashboard</title>

        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="css/sb-admin-2.min.css" rel="stylesheet">
        <link href="css/cusdes.css" rel="stylesheet">
        <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
              rel="Stylesheet"type="text/css">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet">
        <link href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap4.min.css" rel="stylesheet">


        <!-- Template Stylesheet -->
        <link href="css/" rel="stylesheet">
    </head>
    <style>

        .pagination a {
            color: black;
            float: left;
            padding: 8px 16px;
            text-decoration: none;
            border: 0;
        }

        .pagination .page-item.active a.page-link{
            background-image: linear-gradient(90deg, #00d2ff 0%, #3a47d5 100%);
            color: white;
            border-radius: 5px;
        }

        .pagination .page-item a:hover:not(.active) {
            background-color: #ddd;
            border-radius: 5px;
        }
        select.form-control{
            display: inline;
            width: 200px;
            margin-left: 25px;
        }
        .dataTables_filter{
            margin: auto auto;
        }

    </style>
    <body id="page-top">
        <!-- Page Wrapper -->
        <div id="wrapper">

            <!-- Sidebar -->
            <jsp:include page="sidebar.jsp"></jsp:include> 
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


                    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 container-fluid">
                        <h3>Subject Lessons</h3>
                        <h5>${list.get(0).topic.course.name}</h5>







                        <div class="mb-4">
                            <div class="table-responsive ">
                                <!--<h3>Search</h3>-->
                                <div class="">          
                                    <!--<label class="" for="status">Status</label>-->
                                    <select id="statusFilter" class="form-control">
                                        <option value="">All statuses</option>
                                        <option value="Active">Active</option>
                                        <option value="Inactive">Inactive</option>
                                    </select>


                                    <!--<label class="" for="category">Lesson Type</label>-->
                                    <select id="typeFilter" class="form-control">
                                        <option value="">All types</option>
                                        <c:forEach items="${listtype}" var="t">
                                            <option value="${t.type_name}">${t.type_name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <table id="filterTable" class="table table-bordered table-hover  " style=" margin-bottom: 0px; font-size: 15px; " > 
                                    <thead>
                                        <tr class="table-info">
                                            <th>ID</th>
                                            <th>Lesson</th>
                                            <th>Type</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${list}" var="l">

                                            <tr>
                                                <td>${l.id}</td>
                                                <td>${l.name}</td>
                                                <td>${l.type.type_name}</td>
                                                <c:if test="${l.status == 0}">
                                                    <td>Inactive</td>
                                                </c:if>
                                                <c:if test="${l.status != 0}">
                                                    <td>Active</td>
                                                </c:if>
                                                <td>
                                                    <div class="text-center">
                                                        <a href="editlesson?lid=${l.id}&cid=${cid}" class="mr-2 btn btn-info">Edit</a>
                                                        <c:if test="${l.status == 0}">
                                                            <a href="updatestatuslesson?status=${l.status}&lid=${l.id}&cid=${cid}" class="btn btn-success">Active</a>
                                                        </c:if>
                                                        <c:if test="${l.status != 0}">
                                                            <a href="updatestatuslesson?status=${l.status}&lid=${l.id}&cid=${cid}" class="btn btn-danger">Inactive</a>
                                                        </c:if>
                                                    </div>
                                                </td>
                                            </tr>

                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div> 
                        </div>
                    </main>
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.5.1/chosen.jquery.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap4.min.js"></script>
        <script src="js/subjectlesson.js"></script>
    </body>
</html>
