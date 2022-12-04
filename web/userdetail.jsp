
<%-- 
    Document   : userdetail
    Created on : Jun 9, 2022, 10:35:24 AM
    Author     : Laptop88
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>User Information</title>
        <!--<meta charset="UTF-8">-->
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <link rel="stylesheet" href="css/styles_profile.css">
        <meta charset="utf-8">
        <title></title>
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
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
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
            <div class="row" style="height: 1000px">
                <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse h-500">
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

                <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                    <nav class="breadcrumb mt-5">
                        <a class="breadcrumb-item fs-4" href="#">CoreUI</a>
                        <a class="breadcrumb-item fs-4" href="#">Profile</a>
                        <a class="breadcrumb-item fs-4" href="#">Data</a>
                        <a class="breadcrumb-item fs-4 active">Details</a>
                    </nav>
                    <a href="#" data-bs-target="#adduserModal" data-bs-toggle="modal" type="button" class="btn btn-primary mb-5 mt-2 mx-2">Add New User</a>

                    <hr>

                    <div class="my-4">
                        <div class="table-responsive ">
                            <section >
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-lg-3">
                                            <div class="card mb-4 shadow p-3 mb-5 bg-body rounded">
                                                <div class="card-body text-center">
                                                    <img src="${userinfo.avatar}" alt="avatar"
                                                         class="rounded-circle img-fluid" style="height: 150px; width: 150px; object-fit: cover">
                                                    <h5 class="my-3">${userinfo.fullname}</h5>
                                                    <p class="text-muted mb-1">${userinfo.username}</p>
                                                </div>
                                            </div>
                                            <div class="d-flex justify-content-center">
                                                <c:if test="${userinfo.active == 1}">
                                                    <a href="edituser?status=${userinfo.active}&uid=${userinfo.id}" id="" class="btn btn-danger " type="button">Deactive User</a>
                                                </c:if>
                                                <c:if test="${userinfo.active != 1}">
                                                    <a href="edituser?status=${userinfo.active}&uid=${userinfo.id}" id="" class="btn btn-primary " type="button">Active User</a>
                                                </c:if>

                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="card mb-4 shadow p-3 mb-5 bg-body rounded">
                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="col-sm-3">
                                                            <p class="mb-0">Full Name</p>
                                                        </div>
                                                        <div class="col-sm-9">
                                                            <p class="text-muted mb-0">${userinfo.fullname}</p>
                                                        </div>
                                                    </div>
                                                    <hr>
                                                    <div class="row">
                                                        <div class="col-sm-3">
                                                            <p class="mb-0">Email</p>
                                                        </div>
                                                        <div class="col-sm-9">
                                                            <p class="text-muted mb-0">${userinfo.email}</p>
                                                        </div>
                                                    </div>
                                                    <hr>
                                                    <div class="row">
                                                        <div class="col-sm-3">
                                                            <p class="mb-0">Phone</p>
                                                        </div>
                                                        <div class="col-sm-9">
                                                            <p class="text-muted mb-0">${userinfo.phone}</p>
                                                        </div>
                                                    </div>
                                                    <hr>
                                                    <div class="row">
                                                        <div class="col-sm-3">
                                                            <p class="mb-0">Gender</p>
                                                        </div>
                                                        <div class="col-sm-9">
                                                            <c:if test="${userinfo.gender == true}">
                                                                <p class="text-muted mb-0">Male</p>
                                                            </c:if>
                                                            <c:if test="${userinfo.gender == false}">
                                                                <p class="text-muted mb-0">FeMale</p>
                                                            </c:if>
                                                        </div>
                                                    </div>
                                                    <hr>
                                                    <div class="row">
                                                        <div class="col-sm-3">
                                                            <p class="mb-0">Address</p>
                                                        </div>
                                                        <div class="col-sm-9">
                                                            <p class="text-muted mb-0">Ba Dinh, Thanh Xuan, HN</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-lg-3">
                                            <div class="card bg-primary">
                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="col-sm-6">
                                                            <p class="fw-bold fs-4 pt-2">Role</p>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <c:if test="${userinfo.role.id != 5}">
                                                                <a href="#" data-bs-target="#editroleModal" data-bs-toggle="modal" type="button" class="float-end text-white fs-4 pt-2"><i class="fa-solid fa-pen"></i></a>
                                                                </c:if>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-4 shadow p-3 mb-5 bg-body rounded">
                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="col-sm-2">
                                                            <i class="fa-solid fa-circle-check text-success"></i>
                                                        </div>
                                                        <div class="col-sm-9">
                                                            <p class="">${userinfo.role.name}</p>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </section>
                        </div>
                    </div>
                </main>
                <!--pop-up edit role start-->
                <div class="modal fade" id="editroleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Set Role</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form action="editrole" method="GET">
                                    <div class="mb-3">
                                        <label class="form-label"></label>
                                        <input type="text" id="uid" name="uid" value="${userinfo.id}" hidden="true"/>
                                        <c:forEach items="${allrole}" var="r">
                                            <c:if test="${userinfo.role.id == r.id}">
                                                <input type="radio" checked class="mx-2" id="role" name="role" value="${r.id}"/>${r.name}
                                            </c:if>
                                            <c:if test="${userinfo.role.id != r.id}">
                                                <input type="radio" class="mx-2" id="role" name="role" value="${r.id}"/>${r.name}
                                            </c:if>
                                        </c:forEach>
                                    </div>

                                    <div class="mb-3 d-flex justify-content-center">
                                        <button type="submit" class="btn btn-info w-100 rounded-pill">Save</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!--pop-up edit role end-->
                <!--pop-up add new user start-->
                <div class="modal fade" id="adduserModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered modal-xl">
                        <div class="modal-content">
                            <div class="modal-header">
                                <i class="fa-solid fa-circle-user fs-1 text-primary"></i>
                                <h2 class="modal-title px-2" id="exampleModalLabel">New User</h2>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <h5 class="fw-bold">USER INFO</h5>
                                <form action="userdetail" method="POST">

                                    <div class="row">
                                        <div class="col-md-6 mb-3">
                                            <i class="fa-solid fa-user-tie prefix grey-text"></i>
                                            <label class="form-label">Full Name</label>
                                            <input type="text" class="form-control" id="fullname" name="fullname" placeholder="Fullname"  required/>
                                        </div>
                                        <div class="col-md-6 mb-3 position-relative">
                                            <i class="fas fa-envelope prefix grey-text"></i>
                                            <label class="form-label" for="email">Email</label>
                                            <input type="email" class="form-control" id="email" oninput="validationaddemail(this)" pattern="[a-zA-Z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" name="email" placeholder="Username" required/>
                                            <span class="" id="resultvalidationemail"></span>
                                        </div>  
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6 mb-3 position-relative">
                                            <i class="fa-solid fa-phone prefix grey-text"></i>
                                            <label class="form-label">Phone</label>
                                            <input type="text" class="form-control" id="phone" pattern="(84|0[3|5|7|8|9])+([0-9]{8})" name="phone" placeholder="Phone" required/>

                                        </div>
                                        <div class="col-md-6 mb-3 position-relative">
                                            <i class="fa-solid fa-location-dot prefix grey-text"></i>
                                            <label class="form-label">Address</label>
                                            <input type="text" class="form-control" id="address" name="address" placeholder="Address" required/>

                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6 mb-3">
                                            <i class="fa-solid fa-mars-and-venus prefix grey-text"></i>
                                            <label class="form-label">Gender:</label><br>
                                            <div class="d-flex justify-content-center">
                                                <div class="btn-group">
                                                    <input type="radio" class="btn-check" name="gender" id="male" value="male" autocomplete="off" checked />
                                                    <label class="btn btn-outline-primary" for="male">Male</label>

                                                    <input type="radio" class="btn-check" name="gender" id="female" value="female" autocomplete="off" />
                                                    <label class="btn btn-outline-primary" for="female">Female</label>

                                                </div>

                                            </div>
                                        </div>

                                        <div class="col-md-6 mb-3">
                                            <i class="fa-solid fa-users prefix grey-text"></i>
                                            <label class="form-label">Role:</label><br>
                                            <div class="btn-group" >
                                                <c:forEach items="${allrole}" var="r">
                                                    <c:if test="${r.id == 1}">
                                                        <input type="radio" class="btn-check" name="role" id="role${r.id}" value="${r.id}" autocomplete="off" checked/>
                                                        <label class="btn btn-outline-primary" for="role${r.id}">${r.name}</label>
                                                    </c:if>
                                                    <c:if test="${r.id != 1}">
                                                        <input type="radio" class="btn-check" name="role" id="role${r.id}" value="${r.id}" autocomplete="off"/>
                                                        <label class="btn btn-outline-primary" for="role${r.id}">${r.name}</label>
                                                    </c:if>
                                                </c:forEach>  

                                            </div>
                                        </div>
                                    </div>

                                    <div class="mb-3 d-flex justify-content-center">
                                        <input type="submit" class="btn btn-info w-100 rounded-pill" value="Submit"/>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!--pop-up add new user end-->
            </div>


        </div>
        <script type="text/javascript">
            function validationaddemail(param) {
                var email = param.value;
                $.ajax({
                    type: 'GET',
                    data: {email: email},
                    url: "/Online-Learning-SWP/resetpass",
                    success: function (data) {
                        var row = document.getElementById("resultvalidationemail");
                        row.innerHTML = data;
                    }
                });
            }
        </script>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous">

        </script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>

    </body>
</html>
