<%-- 
    Document   : header
    Created on : May 31, 2022, 9:21:45 AM
    Author     : Laptop88
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
            <a href="home" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
                <h2 class="m-0 text-primary"><i class="fa fa-book me-3"></i>eLEARNING</h2>
            </a>
            <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto p-4 p-lg-0">
                    <a href="home" class="nav-item nav-link active">Home</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Learning</a>
                        <div class="dropdown-menu fade-down m-0">
                            <a href="#" class="dropdown-item">Topic 1</a>
                            <a href="#" class="dropdown-item">Topic 2</a>
                            <a href="#" class="dropdown-item">Topic 3</a>
                        </div>
                    </div>
                    <a href="Course" class="nav-item nav-link">Courses</a>
                    <a href="blogs" class="nav-item nav-link">Blog</a>
                    <a href="#" class="nav-item nav-link">Contact</a>

                    <input class="search" type="text" value="">
                    <input style="margin-right: 0.8rem;" class="search1 btn btn-primary" type="submit" value="Search">
                </div>

                <c:if test="${sessionScope.account==null}">
                    <button type="button" data-bs-target="#loginModal" data-bs-toggle="modal" class="btn btn-outline-primary">Login</button>
                    <button type="button" data-bs-target="#registerModal" data-bs-toggle="modal" class="mx-3 btn btn-outline-success">Register</button>

                </c:if>
                <c:if test="${sessionScope.account!=null}">
                    <div class="dropdown">

                        <a id="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false" class="nav-item nav-link"> <i class="fa-solid fa-user"></i> ${sessionScope.account.username}</a>

                        <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
                            <li><button data-bs-toggle="modal" data-bs-target="#profilesetting" href="#" class="dropdown-item"  type="button">Profile</button></li>
                            <li><a class="dropdown-item" href="mycourse">My course</a></li>

                        </ul>
                    </div>
                    <!--<a data-bs-toggle="modal" data-bs-target="#profilesetting" href="#" class="nav-item nav-link"> <i style="margin-left: 0.8rem;" class="fa-solid fa-user"></i> ${sessionScope.account.username}</a>-->
                    <a href="logout" class="nav-item nav-link" style="font-weight:bold;  padding: 0.54rem; color: #FFFFFF; background-color: #06BBCC;">LOGOUT</a>
                </c:if>

            </div>
        </nav>
        <!-- Navbar End -->
        <!--login-->
        <div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Login</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="login-nor" method="POST">
                            <div class="alert-danger" role="alert">
                                <p>${mess}</p>
                            </div>
                            <span id="errorlogin"></span>
                            <div class="mb-3">
                                <i class="fas fa-envelope prefix grey-text"></i>
                                <label class="form-label">Email Address</label>
                                <input type="text" class="form-control" id="loginemail" oninput="validationloginemail(this)" name="email" placeholder="Username" />
                                <span class="" id="resultvalidationloginemail"></span>
                            </div>
                            <div class="mb-3">
                                <i class="fas fa-lock prefix grey-text"></i>
                                <label class="form-label">Password</label>
                                <input type="password" class="form-control" id="loginpassword" name="password" placeholder="Password" />
                            </div>
                            <div class="mb-3">
                                <input type="checkbox" class="form-check-input" id="rememberMe" name="remember"/>
                                <label class="form-check-label" for="rememberMe">Remember me</label>
                                <a class="float-end text-info" href="user?action=recover">Forgot Password?</a></p
                            </div>
                            <div class="mb-3 d-flex justify-content-center">
                                <input type="submit" class="btn btn-info w-100 rounded-pill" value="Submit"/>
                            </div>
                            <div class="social-container">
                                <a href="${fburl}" class="social"><i class="fab fa-facebook-f"></i></a>
                                <a href="${url}" class="social"><i class="fab fa-google-plus-g"></i></a>
                                <a href="${githubUrl}" class="social"><i class="fab fa-linkedin-in"></i></a>
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

    <script>
        var hidden = ${requestScope.alerterror};
        if (hidden <= 1) {
            $('#loginModal').modal('show');

        }
    </script>
    <!--login end-->
    <!--register-->
    <div class="modal fade" id="registerModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Register</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="register" method="POST">
                        <div class="mb-3">
                            <i class="fa-solid fa-user-tie prefix grey-text"></i>
                            <label class="form-label">Full Name</label>
                            <input type="text" class="form-control" id="fullname" name="fullname" placeholder="Fullname" />
                        </div>
                        <div class="mb-3 position-relative">
                            <i class="fas fa-envelope prefix grey-text"></i>
                            <label class="form-label">Email Address</label>
                            <input type="text" class="form-control" id="regisemail" oninput="validationemail(this)" name="email" placeholder="Username" />
                            <span class="" id="resultvalidationemail"></span>
                        </div>
                        <div class="mb-3 position-relative">
                            <i class="fas fa-envelope prefix grey-text"></i>
                            <label class="form-label">Password</label>
                            <input type="password" class="form-control" id="password" oninput="validationpass(this)" name="password"  placeholder="Password" />
                            <span class="" id="resultvalidationpass"></span>
                        </div>
                        <div class="mb-3 position-relative">
                            <i class="fa-solid fa-phone prefix grey-text"></i>
                            <label class="form-label">Phone</label>
                            <input type="text" class="form-control" id="phone" oninput="validationphone(this)" name="phone" placeholder="Phone" />
                            <span class="" id="resultvalidationphone"></span>
                        </div>
                        <div class="mb-3">
                            <i class="fa-solid fa-mars-and-venus prefix grey-text"></i>
                            <label class="form-label">Gender:</label><br>
                            <div class="d-flex justify-content-center">
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="gender" id="gender" value="male">
                                    <label class="form-check-label" for="gender">Male</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="gender" id="gender" value="female">
                                    <label class="form-check-label" for="gender">Female</label>
                                </div>
                            </div>
                        </div>
                        <div class="mb-3 d-flex justify-content-center">
                            <button type="submit" class="btn btn-info w-100 rounded-pill">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        //        var valiemail = document.getElementById("regisemail");
        //        var text = document.getElementById("result");
        //        valiemail.oninput = function () {
        //            const pattern = /[a-zA-Z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$/;
        //            if (pattern.test(valiemail.value)) {
        //                text.innerHTML = "This email can be use!"+ '  <i class="fa-solid fa-circle-check"></i>';
        //                text.style.color = 'limegreen';
        //                valiemail.style.border = '1px solid limegreen';
        //                text.style.fontStyle = 'italic';
        //            } else {
        //                text.innerHTML = "Please input the correct email format (Ex: abc@example.com)"+'  <i class="fa-solid fa-circle-xmark"></i>';
        //                text.style.color = 'crimson';
        //                valiemail.style.border = '1px solid crimson';
        //                text.style.fontStyle = 'italic';
        //            }
        //        };

        function validationloginemail(param) {
            var email = param.value;
            $.ajax({
                type: 'POST',
                data: {email: email},
                url: "/Online-Learning-SWP/valiregister",
                success: function (data) {
                    var row = document.getElementById("resultvalidationloginemail");
                    row.innerHTML = data;
                }
            });
        }
        function validationemail(param) {
            var email = param.value;
            $.ajax({
                type: 'POST',
                data: {email: email},
                url: "/Online-Learning-SWP/error",
                success: function (data) {
                    var row = document.getElementById("resultvalidationemail");
                    row.innerHTML = data;
                }
            });
        }
        function validationphone(param) {
            var phone = param.value;
            $.ajax({
                type: 'GET',
                data: {phone: phone},
                url: "/Online-Learning-SWP/error",
                success: function (data) {
                    var row = document.getElementById("resultvalidationphone");
                    row.innerHTML = data;
                }
            });
        }
        function validationpass(param) {
            var pass = param.value;
            $.ajax({
                type: 'GET',
                data: {password: pass},
                url: "/Online-Learning-SWP/valiregister",
                success: function (data) {
                    var row = document.getElementById("resultvalidationpass");
                    row.innerHTML = data;
                }
            });
        }
    </script>
</body>
</html>
