<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <title>Online Learning System</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Premium Bootstrap 4 Landing Page Template" />
        <!-- favicon -->
        <link rel="shortcut icon" href="./images/favicon.ico.png">
        <!-- Bootstrap -->
        <link href="./css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- Icons -->
        <link href="./css/materialdesignicons.min.css" rel="stylesheet" type="text/css" />
        <link href="./css/remixicon.css" rel="stylesheet" type="text/css" />
        <link href="https://unicons.iconscout.com/release/v3.0.6/css/line.css"  rel="stylesheet">
        <!-- Css -->
        <link href="./css/style.min.css" rel="stylesheet" type="text/css" id="theme-opt" />
        <style>
            body, html {
                height: 100%;

                background-image:linear-gradient(rgba(0,0,0,.2),rgba(0,0,0,.2)), url("../images/background.png");
                /* Full height */
                height: 100%;
                /* Center and scale the image nicely */
                background-repeat: no-repeat;
                background-size: 100% auto;

            }
            #x1{
                display: none;
            }

            #login{
                border-radius: 25px;
                color: black;
                font-weight: 500;
            }

            .btn{
                border: 3px solid #E5EAEA;
            }

            .btn:hover, .btn:focus, .btn:active{
                background-color: #DEE7E7;
                color: black !important;
            }

            #gg{
                width: 15px;
                height: 15px;
            }

            #signup{
                color: orange !important;
            }

            #term{
                font-size:12px !important;
            }

            #introduction{
                font-size:16px !important;
            }

            #linkIntroduction{
                text-decoration: none;
            }

            #tos{
                text-decoration: underline !important;
            }

            .blue{
                color: #4263B5;
            }
        </style>
    </head>

    <body>
        <!-- Loader -->
        <div id="preloader">
            <div id="status">
                <div class="spinner">
                    <div class="double-bounce1"></div>
                    <div class="double-bounce2"></div>
                </div>
            </div>
        </div>
        <!-- Loader -->

        <div class="back-to-home rounded d-none d-sm-block">
            <a href="index.html" class="btn btn-icon btn-primary"><i data-feather="home" class="icons"></i></a>
        </div>

        <!-- Hero Start -->
        <section class="bg-home d-flex bg-light align-items-center" style="background: url('./images/background.png'); background-size: 100% auto;">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-7 col-md-8">

                        <div class="card login-page bg-white shadow mt-10 rounded-9" style="border-radius: 1rem">
                            <div class="card-body" id="mailorphone">
                                <img src="./images/F8.png" height="80" class="mx-auto d-block" style="padding-bottom: 40px" alt="">
                                <h4 class="text-center">Đăng nhập vào F8</h4>  
                                <form action="index.html" class="login-form mt-4">
                                    <div class="row justify-content-center">
                                        <div class="col-lg-6 mb-4">
                                            <div class="d-grid">
                                                <a id="login" href="#" class="btn"><i style="float: left;" class="uil uil-user"></i>Sử dụng email/số điện thoại</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row justify-content-center">
                                        <div class="col-lg-6 mb-4">
                                            <div class="d-grid">
                                                <a id="login" href="${url}" class="btn"><i style="float: left;"><img id="gg" src="./images/gg.png"/></i>Tiếp tục với Google</a>
                                            </div>
                                        </div><!--end col-->
                                    </div>
                                    <div class="row justify-content-center">
                                        <div class="col-lg-6 mb-4">
                                            <div class="d-grid">
                                                <a id="login" href="${fburl}" class="btn" ><i style="float: left;" class="uil uil-facebook blue"></i>Tiếp tục với Facebook</a>
                                            </div>
                                        </div><!--end col-->
                                    </div>                        
                                    <div class="row justify-content-center">
                                        <div class="col-lg-6 mb-4">
                                            <div class="d-grid">
                                                <a id="login" href="${githubUrl}" class="btn"><i style="float: left;" class="uil uil-github"></i>Tiếp tục với Github</a>
                                            </div>
                                        </div><!--end col-->
                                    </div>
                                    <div class="col-12 text-center">
                                        <p class="mb-0 mt-3"><small class="text-dark me-2">Bạn chưa có tài khoản ?</small> <a id="signup" href="signup.html" class="text-dark fw-bold">Đăng ký</a></p>
                                    </div>
                                </form>
                                <div class="row justify-content-center">
                                    <div class="col-8 text-center mt-3">
                                        <p class="mb-0 mt-3"><small id="term" class"text-dark me-2">Việc bạn tiếp tục sử dụng trang web này đồng nghĩa bạn đồng ý với
                                                <a id="tos" href="#" class="text-dark">Điều khoản sử dụng</a> của chúng tôi.</small>
                                        </p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div><!---->
                </div> <!--end col-->
                <div class="row justify-content-center mt-0">
                    <div class="col-8 text-center">
                        <p class="mb-0 mt-3 text-light"><small id="introduction" class"text-dark me-2">
                                <a id="linkIntroduction" href="#" class="text-light">Giới thiệu về F8</a> | 
                                <a id="linkIntroduction" href="https://www.youtube.com/c/F8VNOfficial" target="_blank" class="text-light">F8 trên Youtube</a> | 
                                <a id="linkIntroduction" href="https://www.facebook.com/groups/f8official" target="_blank" class="text-light">F8 trên Facebook</a></small>
                        </p>
                    </div>
                </div>
            </div><!--end row-->
        </div> <!--end container-->
    </section><!--end section-->
    <!-- Hero End -->
    <div class="card-body" id="x1">
        <img src="./images/F8.png" height="80" class="mx-auto d-block" style="padding-bottom: 40px" alt="">
        <h4 class="text-center">Đăng nhập vào F8</h4>  
        <form action="login" method="post" class="login-form mt-4">
            <div class="row">
                <div class="col-lg-12">
                    <div class="mb-3">
                        <label class="form-label">Email <span class="text-danger"></span></label>
                        <input  class="form-control" placeholder="Địa chỉ email" name="username" required="">
                    </div>
                </div>

                <div class="col-lg-12">
                    <div class="mb-3">
                        <label class="form-label"><span class="text-danger"></span></label>
                        <input type="password"  class="form-control" placeholder="Mật khẩu" required="">
                    </div>
                </div>
                <div>${msg}</div>
                <div class="col-lg-12">
                    <div class="d-flex justify-content-between">
                        <div class="mb-3">
                            <div class="form-check">
                                <input class="form-check-input align-middle" type="checkbox" value="" id="remember-check">
                                <label class="form-check-label" for="remember-check">Remember me</label>
                            </div>
                        </div>
                        <a href="forgot-password.html" class="text-dark h6 mb-0">Forgot password ?</a>
                    </div>
                </div>
                <div class="col-lg-12 mb-0">
                    <div class="d-grid">
                        <button class="btn btn-primary">Sign in</button>
                    </div>
                </div>

                <div class="col-lg-12 mt-3 text-center">
                    <h6 class="text-muted">Or</h6>
                </div><!--end col-->

                <div class="col-6 mt-3">
                    <div class="d-grid">
                        <a href="${fburl}" class="btn btn-soft-primary"><i class="uil uil-facebook"></i> Facebook</a>
                    </div>
                </div><!--end col-->

                <div class="col-6 mt-3">
                    <div class="d-grid">
                        <a href="${url}" class="btn btn-soft-primary"><i class="uil uil-google"></i> Google</a>
                    </div>
                </div><!--end col-->

                <div class="col-12 text-center">
                    <p class="mb-0 mt-3"><small class="text-dark me-2">Don't have an account ?</small> <a href="signup.html" class="text-dark fw-bold">Sign Up</a></p>
                </div>
            </div>
        </form>
    </div> <!--end container-->

    <!-- javascript -->
    <script src="./js/bootstrap.bundle.min.js"></script>
    <!-- Icons -->
    <script src="./js/feather.min.js"></script>
    <!-- Main Js -->
    <script src="./js/app.js"></script>
    <script>
//                                                    function loginByMailorPhone() {
//                                                        var x = document.getElementById('mailorphone');
//                                                        x.innerHTML = document.getElementById('x1').innerHTML;
//                                                    }
    </script>

</body>

</html>