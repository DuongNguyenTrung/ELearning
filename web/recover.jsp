<%-- 
    Document   : recover
    Created on : May 27, 2022, 12:32:48 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./assets/font/themify-icons/themify-icons.css">
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="css/recover.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>eLEARNING - Reset Password</title>
    </head>

    <body>

        <div class="back-to-home d-none d-sm-block">
            <a href="home" class="btn btn-primary"><i class="fa fa-home"></i></a>
        </div>

        <section class="bg-home d-flex bg-light align-items-center">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-5 col-md-8">
                        <div class="card login-page bg-white shadow mt-4 rounded border-0">
                            <div class="card-body">
                                <h4 class="text-center" style="font-weight: bold">Reset Password</h4>
                                <p style="color:red ;align-content: center;">
                                    ${requestScope.error}
                                </p>
                                <p style="color: blue; align-content: center;">
                                    ${requestScope.success}
                                </p>
                                <c:if test="${requestScope.type == null}">
                                    <form action="user?action=checkemail" method="POST" class="login-form mt-4" onsubmit="document.getElementById('submit').disabled = true;">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <p class="text-muted">Enter your email address in the form bellow
                                                    and we will send your further instructions on how to reset your password</p>
                                                <div class="mb-3">
                                                    <label class="form-label">Email <span class="text-danger">*</span></label>
                                                    <input class="form-control" value="${email}" type="email" name="email" required="" />
                                                </div>
                                            </div>

                                            <div class="col-lg-12">
                                                <div class="d-grid">
                                                    <button id="submit" class="btn btn-primary">Confirm</button>
                                                </div>
                                            </div>

                                            <div class="mx-auto">
                                                <div class="mb-0 mt-3">
                                                    <a href="home" class="h6 mb-0">Back</a>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </c:if>

                                <!-- form 2 -->
                                <c:if test="${requestScope.type == 'recover'}">
                                    <form action="user?action=forgot" method="POST" class="login-form mt-4" onSubmit="document.getElementById('submit').disabled = true;">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <p class="text-muted">Please enter your new password</p>
                                                <div class="mb-3">
                                                    <label class="form-label">New password: <span
                                                            class="text-danger">*</span></label>
                                                    <input value="${password}" oninvalid="CheckPassword(this);" oninput="CheckPassword(this);" type="password" id="password" class="form-control" name="password" required="">
                                                </div>
                                                <div class="mb-3">
                                                    <label class="form-label">Verify password: <span
                                                            class="text-danger">*</span></label>
                                                    <input value="${repassword}" oninvalid="CheckRePassword(this);" oninput="CheckRePassword(this);" type="password" class="form-control" name="repassword" required="">
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="d-grid">
                                                    <button id="submit" class="btn btn-primary">Reset My Password</button>
                                                </div>
                                            </div>
                                            <div class="mx-auto">
                                                <p class="mb-0 mt-3"><a href= "home" class="text-dark h6 mb-0">Back</a></p>
                                            </div>
                                        </div>
                                    </form>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <script type="text/javascript">
            function CheckPassword(text) {
                var pass = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$/;
                if (!pass.test(text.value)) {
                    text.setCustomValidity('Password invalid!');
                } else {
                    text.setCustomValidity('');
                }
                return true;
            }

            function CheckRePassword(text) {
                var password = document.getElementById('password').value;
                if (password != text.value) {
                    text.setCustomValidity('Not matching!');
                } else {
                    text.setCustomValidity('');
                }
                return true;
            }
        </script>

        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>

</html>


