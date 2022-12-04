<%-- 
    Document   : quizzeslist
    Created on : Jul 12, 2022, 11:48:25 PM
    Author     : win
--%>

<%@page import="model.Quizzes"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dal.CourseDAO"%>>
<%@page import="model.Course"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>eLEARNING - Quizzes</title>

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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" rel="stylesheet" />
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.5.1/chosen.jquery.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.5.1/chosen.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.5.1/chosen.min.css">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.5.1/chosen.jquery.min.js"></script>
        <script src="js/pagging.js"></script>
        <link href="css/pagination.css" rel="stylesheet">
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
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#lesson"
                       aria-expanded="true" aria-controls="lesson">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>Lesson</span>
                    </a>
                    <div id="lesson" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
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
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#quizzes"
                       aria-expanded="true" aria-controls="quizzes">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>Quizzes</span>
                    </a>
                    <div id="quizzes" class="collapse" aria-labelledby="headingUtilities"
                         data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Quizzes</h6>
                            <a class="collapse-item" href="quizzes">View</a>
                            <a class="collapse-item" href="#">Quizz Detail</a>
                        </div>
                    </div>
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
                    <div class="container-fluid">
                        <form action="quizzes" method="GET">
                            <!-- Page Heading -->
                            <div class=" align-items-center  mb-4" style="display: flex;">
                                <div style="width: 40%;">
                                    <h1 class="h3 mb-0 text-gray-800">Quizzes List</h1>
                                </div>
                                <div class="input-group mt-4">
                                    <div class="form-outline" style="margin-left: 32rem;">
                                        <input  name="txt" value="${requestScope.txt}" type="search"  class="form-control " placeholder="Search"style="width: 16.5rem;" />
                                    </div>
                                    <input class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm ml-2"
                                           type="submit" name="search" value="Search">
                                </div>

                            </div>

                            <!-- Content Row -->
                            <div class="row">
                                <div class="col-md-5">
                                    <h4>
                                        Search By Subject:
                                    </h4>
                                    <c:set var="listCourses" value="${requestScope.listSubCategoryCourse}"  />
                                    <c:set var="checkTag" value="${requestScope.courseCheck}"  />
                                    <select name="course" multiple="" class="chosen" style="width: 20rem;">
                                        <c:forEach begin="0" end="${listCourses.size()-1}" var="i">
                                            <option ${checkTag[i]?"selected":""} value="${listCourses.get(i).id}">${listCourses.get(i).name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="col-md-7">
                                    <h4>
                                        Search By Status:
                                    </h4>
                                    <select name="status"  class="chosen" style="width: 20rem;">
                                        <option ${requestScope.status == 1?"selected":""} value="1">
                                            public
                                        </option >
                                        <option ${requestScope.status == 0?"selected":""} value="0">
                                            hidden
                                        </option>
                                    </select>
                                    <input type="submit" value="Filter" style="margin-left: 6rem; background-color: #06BBCC;color: #FFFFFF; border-color: #FFFFFF; margin-bottom: 2rem; height: 2.7rem; width: 6rem;">

                                    <script type="text/javascript">
                                        $(".chosen").chosen();
                                    </script>
                                </div>
                            </div>
                        </form>


                        <!-- Content Row -->

                        <div class="row">
                            <a href="#"><input type="submit"  value="Add new" style="background-color: #06BBCC;color: #FFFFFF; border-color: #FFFFFF; margin-bottom: 2rem; height: 2.7rem; width: 6rem;"></a>
                            <table class="table">
                                <thead class="thead-light">
                                    <tr>
                                        <th scope="col">Id</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Subject</th>
                                        <th scope="col">Level</th>
                                        <th scope="col">NoQuestion</th>
                                        <th scope="col">Duration</th>
                                        <th scope="col">Pass rate</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% List<Quizzes> list = (List<Quizzes>) request.getAttribute("listtxt");
                                    %>
                                    <%for (Quizzes quizzes : list) {%>
                                    <tr>
                                        <th scope="row"><%=quizzes.getId()%></th>
                                        <td><%=quizzes.getName()%></td>
                                        <td><%=quizzes.getCourse().getName()%></td>
                                        <td><%=quizzes.getQLevel().getName()%></td>
                                        <td><%=quizzes.getNumberQuestion()%></td>
                                        <td><%=quizzes.getDuration()%></td>
                                        <td><%=quizzes.getPassrate()%>%</td>
                                        <td>
                                            <a href="QuizzesDetail?id=<%=quizzes.getId()%>" style="font-size: 15px"> Edit </a> |
                                            <a href="#" style="font-size: 15px"> Delete</a>
                                        </td>
                                    </tr>

                                    <%}%>

                                </tbody>
                            </table>


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
                </div>
                <!-- /.container-fluid -->

            </div>
            <script>


                scrollWindow();

                // scrolls the window to auto load in middle of page 

                function scrollWindow() {
                    window.scroll(0, 730);
                }

                pagging("pagger", 2,${requestScope.totalpage}, ${requestScope.pageindex}, "${requestScope.url}");
                function pagging(id, gap, totalPage, pageIndex, url_param) {
                    var container = document.getElementById(id);
                    result = '';
                    if (pageIndex - gap > 1) {
                        result += '<li><a  href="' + url_param + 'page=1">First</a></li>';
                    }
                    // má»i thÃªm
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

                    // má»i thÃªm
                    if (pageIndex < totalPage) {
                        result += '<li><a href="' + url_param + 'page=' + (pageIndex + 1) + '">Next</a></li>';
                    }
                    if (pageIndex + gap < totalPage) {
                        result += '<li"><a href="' + url_param + 'page=' + totalPage + '">Last<i class="ti-arrow-right"></i></a></li>';
                    }
                    container.innerHTML = result;

                }

            </script>
            <!-- End of Main Content -->
            <script type="text/javascript">
                $(".chosen").chosen();
            </script>
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

<!--login end-->
</body>

</html>
