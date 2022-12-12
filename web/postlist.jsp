<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dal.CourseDAO"%>
<%@page import="model.Course"%>
<!DOCTYPE html>
<html lang="en">
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

    </head>

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
                    <form action="dashboard" method="GET">
                        <!-- Begin Page Content -->
                        <div class="container-fluid">

                            <!-- Page Heading -->
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

                        </div>
                    </form>
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


        <!--login-->
        <div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Login</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="login" method="POST">
                            <div class="alert-danger" role="alert">
                                <p>${mess}</p>
                            </div>
                            <div class="mb-3">
                                <i class="fas fa-envelope prefix grey-text"></i>
                                <label class="form-label">Email Address</label>
                                <input type="text" class="form-control" id="email" name="email" placeholder="Username" />
                            </div>
                            <div class="mb-3">
                                <i class="fas fa-lock prefix grey-text"></i>
                                <label class="form-label">Password</label>
                                <input type="password" class="form-control" id="password" name="password" placeholder="Password" />
                            </div>
                            <div class="mb-3">
                                <input type="checkbox" class="form-check-input" id="rememberMe" name="remember"/>
                                <label class="form-check-label" for="rememberMe">Remember me</label>
                                <a class="float-end text-info" href="#">Forgot Password?</a></p
                            </div>
                            <div class="mb-3 d-flex justify-content-center">
                                <button type="submit" class="btn btn-info w-100 rounded-pill">Submit</button>
                            </div>
                            <div class="modal-footer d-block">
                                <p class="text-center">Not yet account?
                                    <a href="#" data-bs-target="#registerModal" data-bs-toggle="modal" class="text-info" type="button">Sign up</a>
                                </p>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <jsp:include page="footer.jsp"></jsp:include>

    <!--login end-->
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

</body>

</html>