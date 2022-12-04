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
                            <div class="d-sm-flex align-items-center  mb-4">
                                <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                                <div class="des-date">

                                    Date From:<input class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm ml-2"
                                                     type="text" name="from" id="txtFrom" value="${from}">
                                    Date To:<input class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm ml-2"
                                                   type="text" name="to" id="txtTo" value="${to}">

                                </div>
                                <input class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm ml-2"
                                       type="submit" name="search" value="Filter">
                            </div>


                            <!-- Content Row -->
                            <div class="row">

                                <!-- Earnings (Monthly) Card Example -->
                                <div class="col-xl-6 col-md-6 mb-4">
                                    <div class="card border-left-primary shadow h-100 py-2">
                                        <div class="card-body">
                                            <div class="row no-gutters align-items-center">
                                                <div class="col mr-2">
                                                    <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                        Subject</div>
                                                    <div class="text-m font-weight-bold text-primary text-uppercase mb-1">
                                                        Total:</div>
                                                    <div class="h5 mb-0 font-weight-bold text-gray-800">${totalCourse} (Subject)</div>
                                                    <div class="text-m font-weight-bold text-primary text-uppercase mb-1">
                                                        New:</div>
                                                    <div class="h5 mb-0 font-weight-bold text-gray-800">${totalCourseByDate} (Subject)</div>
                                                </div>
                                                <div class="col-auto">
                                                    <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Earnings (Monthly) Card Example -->
                                <div class="col-xl-6 col-md-6 mb-4">
                                    <div class="card border-left-success shadow h-100 py-2">
                                        <div class="card-body">
                                            <div class="row no-gutters align-items-center">
                                                <div class="col mr-2">
                                                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                        Customer </div>
                                                    <div class="text-m font-weight-bold text-primary text-uppercase mb-1">
                                                        Total:</div>
                                                    <div class="h5 mb-0 font-weight-bold text-gray-800">${totalCus} (Customer)</div>
                                                    <div class="merge-inline">
                                                        <div class="text-m font-weight-bold text-primary text-uppercase mb-1">
                                                            New:</div>&nbsp&nbsp&nbsp
                                                        <div class="h5 mb-0 font-weight-bold text-gray-800">${totalCusByDate} (Customer)</div>
                                                    </div>
                                                    <div class="merge-inline">
                                                        <div class="text-m font-weight-bold text-primary text-uppercase mb-1">
                                                            Bought:</div>&nbsp&nbsp&nbsp
                                                        <div class="h5 mb-0 font-weight-bold text-gray-800">${totalCusBoughtByDate} (Customer)</div>
                                                    </div>

                                                </div>
                                                <div class="col-auto">
                                                    <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </div>

                            <!-- Content Row -->

                            <div class="row">

                                <!-- Area Chart -->
                                <div class="col-xl-8 col-lg-7">
                                    <div class="card pre-des shadow mb-4">
                                        <!-- Card Header - Dropdown -->
                                        <div
                                            class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                            <h6 class="m-0 font-weight-bold text-primary">$ Revenue: ${totalRevenues} $</h6>
                                            <h6 class="m-0 font-weight-bold text-primary">$ Current Week: ${totalRevenuesCurrentW}
                                                $</h6>
                                            <h6 class="m-0 font-weight-bold" >$ Previous Week: ${totalRevenuesPreviousW} $</h6>
                                            <div class="dropdown no-arrow">
                                                <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                                     aria-labelledby="dropdownMenuLink">
                                                    <div class="dropdown-header">Dropdown Header:</div>
                                                    <a class="dropdown-item" href="#">Total</a>
                                                    <div class="dropdown-header">By Category:</div>
                                                    <ol id="myCate" onclick="myFunction()" value="Grade10" class="dropdown-item">Grade 10</ol>
                                                    <ol id="myCate"  value="Grade11" class="dropdown-item">Grade 11</ol>
                                                    <ol id="myCate" value="Grade12" class="dropdown-item">Grade 12</ol>

                                                </div>
                                            </div>
                                        </div>
                                        <script type="text/javascript">
                                            function myFunction() {
                                                document.getElementById("rMon").setAttribute("value", ${cMon10});
                                                alert(document.getElementById("rMon").value);
                                                location.reload();
                                            }
                                        </script>
                                        <!--value of area chart-->
                                        <div style="display: none;">
                                            <input id="rMon" value="${rMon}">
                                            <input id="cTue" value="${cTue}">
                                            <input id="cWed" value="${cWed}">
                                            <input id="cThu" value="${cThu}">
                                            <input id="cFri" value="${cFri}">
                                            <input id="cSat" value="${cSat}">
                                            <input id="cSun" value="${cSun}">
                                            <input id="pMon" value="${pMon}">
                                            <input id="pTue" value="${pTue}">
                                            <input id="pWed" value="${pWed}">
                                            <input id="pThu" value="${pThu}">
                                            <input id="pFri" value="${pFri}">
                                            <input id="pSat" value="${pSat}">
                                            <input id="pSun" value="${pSun}">
                                            <input id="trendByDateMon" value="${trendByDateMon}">
                                            <input id="trendByDateTue" value="${trendByDateTue}">
                                            <input id="trendByDateWed" value="${trendByDateWed}">
                                            <input id="trendByDateThu" value="${trendByDateThu}">
                                            <input id="trendByDateFri" value="${trendByDateFri}">
                                            <input id="trendByDateSat" value="${trendByDateSat}">
                                            <input id="trendByDateSun" value="${trendByDateSun}">
                                            <input id="trendSucessByDateMon" value="${trendSucessByDateMon}">
                                            <input id="trendSucessByDateTue" value="${trendSucessByDateTue}">
                                            <input id="trendSucessByDateWed" value="${trendSucessByDateWed}">
                                            <input id="trendSucessByDateThu" value="${trendSucessByDateThu}">
                                            <input id="trendSucessByDateFri" value="${trendSucessByDateFri}">
                                            <input id="trendSucessByDateSat" value="${trendSucessByDateSat}">
                                            <input id="trendSucessByDateSun" value="${trendSucessByDateSun}">
                                            <input id="countResByDateSuccess" value="${countResByDateSuccess}">
                                            <input id="countResByDateCanncelled" value="${countResByDateCanncelled}">
                                            <input id="countResByDateSubmitted" value="${countResByDateSubmitted}">
                                        </div>

                                        <!-- Card Body -->
                                        <div class="card-body">
                                            <div class="chart-area">
                                                <canvas id="myAreaChart"></canvas>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Pie Chart -->
                                <div class="col-xl-4 col-lg-5">
                                    <div class="card shadow mb-4">
                                        <!-- Card Header - Dropdown -->
                                        <div
                                            class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                            <h6 class="m-0 font-weight-bold text-primary">Registration</h6>
                                            <h6 class="m-0 font-weight-bold text-primary">Total:  ${countResByDate}</h6>
                                        </div>
                                        <!-- Card Body -->
                                        <div class="card-body">

                                            <div class="chart-pie pt-4 pb-2">
                                                <canvas id="myPieChart"></canvas>
                                            </div>
                                            <div class="mt-4 text-center small">
                                                <span class="mr-2">
                                                    <i class="fas fa-circle text-primary"></i> Success
                                                </span>
                                                <span class="mr-2">
                                                    <i class="fas fa-circle text-success"></i> Cancelled
                                                </span>
                                                <span class="mr-2">
                                                    <i class="fas fa-circle text-info"></i> Submitted
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Content Row -->
                            <div class="row">

                                <!-- Content Column -->
                                <div class="col-lg-6 mb-4">

                                    <!-- Project Card Example -->
                                    <div class="card shadow mb-4">
                                        <div class="card-header py-3">
                                            <h6 class="m-0 font-weight-bold text-primary">Trend of order:</h6>
                                        </div>
                                        <div class="card-body">
                                            <canvas id="trend_order"></canvas>
                                        </div>
                                    </div>



                                </div>

                                <div class="col-lg-6 mb-4">

                                    <!-- Illustrations -->
                                    <div class="card shadow mb-4">
                                        <div
                                            class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                            <h6 class="m-0 font-weight-bold text-primary">Revenues By Category</h6>
                                            <h6 class="m-0 font-weight-bold text-primary">Total:  ${totalRevenues} $</h6>
                                        </div>
                                        <div class="card-body">
                                            <h4 class="small font-weight-bold">Grade 10: ${revenue10} $<span
                                                    class="float-right">${revenue10p}%</span></h4>
                                            <div class="progress mb-4">
                                                <div class="progress-bar bg-danger" role="progressbar" style="width: ${revenue10p}%"
                                                     aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                            <h4 class="small font-weight-bold">Grade 11: ${revenue11} $<span
                                                    class="float-right">${revenue11p}%</span></h4>
                                            <div class="progress mb-4">
                                                <div class="progress-bar bg-warning" role="progressbar" style="width: ${revenue11p}%"
                                                     aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                            <h4 class="small font-weight-bold">Grade 12: ${revenue12} $<span
                                                    class="float-right">${revenue12p}%</span></h4>
                                            <div class="progress mb-4">
                                                <div class="progress-bar" role="progressbar" style="width: ${revenue12p}%"
                                                     aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                        </div>
                                    </div>



                                </div>

                            </div>
                            <div class="col-lg-8 mb-4">

                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <h6 class="m-0 font-weight-bold text-primary">Illustrations</h6>
                                    </div>
                                    <div class="card-body">
                                        <p>Revenue chart by total and category of current week and previous week to compare revenue two latest week.</p>
                                        <p>Registration chart statistics the number of registered customers in three states: successful, canceled and submitted.</p>
                                        <p>Trend of order chart statistics the number of trend orders within 7 days.</p>
                                        <a target="_blank" rel="nofollow" href="https://undraw.co/">More info&rarr;</a>
                                    </div>
                                </div>


                            </div>
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