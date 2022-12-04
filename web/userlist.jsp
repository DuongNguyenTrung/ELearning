
<%-- 
    Document   : userlist
    Created on : Jun 10, 2022, 6:17:03 AM
    Author     : Laptop88
--%>

<%@page import="java.util.List"%>
<%@page import="model.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Course"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin Dashboard</title>
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
                                <a class="nav-link" href="subjectlist">
                                    <i class="fas fa-fw fa-palette fs-5"></i>
                                    <span class="fs-5">Subject</span>
                                </a>
                                <a class="nav-link" href="userlist">
                                    <i class="fa-solid fa-user fs-5"></i>
                                    <span class="fs-5">User</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>
                <%
                    int a = (Integer) request.getAttribute("sort");
                %>
                <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                    <div id="formsearch" class="my-5">
                        <!--<h3>Search</h3>-->
                        <form action="userlist"  class="requires-validation " is-validated>
                            <input type="hidden" name="do" value="search">
                            <div class="d-flex justify-content-between">

                                <div class="col-md-4" >
                                    <label class="" for="name">Full Name</label>
                                    <input id="name"  class="form-control" type="text" name="name" placeholder="Input name to search" >
                                </div>
                                <div class="col-md-4">
                                    <label class="" for="category"></label>
                                    <select class="mr-2 form-control" name="sort" onchange="chGate()">
                                        <option value="1" <%= a == 1 ? "selected" : ""%>>All</option>                         
                                        <option value="2" <%= a == 2 ? "selected" : ""%>>Id: Low-High</option>
                                        <option value="3" <%= a == 3 ? "selected" : ""%>>Id: High-Low</option>
                                    </select>
                                </div>
                            </div>

                            <input style="float:right;" id="ip1" class="btn btn-dark btn-outline-light mb-5 mt-2" type="submit" value="Search">
                            <script type="text/javascript">
                                function chGate()
                                {
                                    frGate.submit();
                                }
                            </script>
                            <a href="userlist" style="float:right;" id="ip1" class="btn btn-primary   mb-5 mt-2 mx-2" type="button">Reset</a>

                        </form>

                    </div>

                    <div class="mb-4" style="clear: both; border: solid black 1px;">
                        <div class="table-responsive ">
                            <table class="table table-bordered table-hover  " style=" margin-bottom: 0px; font-size: 15px; " > 
                                <tr class="table-primary">
                                    <th>
                                        ID 
                                    </th>
                                    <th >
                                        Full Name 
                                    </th>
                                    <th >
                                        Gender
                                    </th>
                                    <th >
                                        Email
                                    </th>
                                    <th >
                                        Mobile 
                                    </th>
                                    <th >
                                        Role
                                    </th>
                                    <th >
                                        Status
                                    </th>
                                    <th>

                                    </th>

                                </tr>
                                <%
                                    List<User> list = (List<User>) request.getAttribute("userList");
                                    for (User o : list) {
                                %>
                                <tr>
                                    <td>
                                        <%=o.getId()%>
                                    </td>
                                    <td >

                                        <%=o.getFullname()%>
                                    <td >
                                        <% if (o.isGender() == true) {%>
                                        Male
                                        <% } else { %>
                                        Female                                       
                                        <%}%>                          
                                    </td>
                                    <td >
                                        <%=o.getEmail()%>
                                    </td>
                                    <td >
                                        <%=o.getPhone()%>
                                    </td>
                                    <td >
                                        <%=o.getRole().getName()%>
                                    </td>
                                    <td >
                                        <% if (o.getActive() == 1) {%>
                                        <p style="color: chartreuse">Active</p>
                                        <% } else { %>
                                        <p style="color: red">Deactive</p>  
                                        <%}%>
                                    </td>
                                    <td>
                                        <a href="userdetail?user_id=<%=o.getId()%>"><i class="fa-solid fa-eye"></i></a>
                                    </td>

                                </tr>
                                <%}%>
                            </table>
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
