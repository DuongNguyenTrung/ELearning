<%-- 
    Document   : course
    Created on : May 25, 2022, 7:54:11 AM
    Author     : win
--%>
<%@page import="dal.CourseDAO"%>
<%@page import="model.Course"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>eLEARNING</title>
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
        <link href="css/login.css" rel="stylesheet">
        <link href="css/pagination.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.5.1/chosen.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.5.1/chosen.min.css">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.5.1/chosen.jquery.min.js"></script>
        <script src="js/pagging.js"></script>
    </head>

    <body>
        <!-- Navbar Start -->
        <jsp:include page="header.jsp"></jsp:include>

        <!-- Navbar End -->


        <!-- Carousel Start -->
        <div class="container-fluid p-0 mb-5">
            <div class="owl-carousel header-carousel position-relative">
                <div class="owl-carousel-item position-relative">
                    <img class="img-fluid" src="https://www.talentlms.com/old/wp-content/uploads/2018/08/what-tools-will-you-need.jpg" alt="">
                    <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(24, 29, 56, .7);">
                        <div class="container">
                            <div class="row justify-content-start">
                                <div class="col-sm-10 col-lg-8">
                                    <h5 class="text-primary text-uppercase mb-3 animated slideInDown">Best Online Courses</h5>
                                    <h1 class="display-3 text-white animated slideInDown">The Best Online Learning Platform</h1>
                                    <p class="fs-5 text-white mb-4 pb-2">Vero elitr justo clita lorem. Ipsum dolor at sed stet sit diam no. Kasd rebum ipsum et diam justo clita et kasd rebum sea sanctus eirmod elitr.</p>
                                    <a href="" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Read More</a>
                                    <a href="" class="btn btn-light py-md-3 px-md-5 animated slideInRight">Join Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="owl-carousel-item position-relative">
                    <img class="img-fluid" src="https://www.talentlms.com/old/wp-content/uploads/2018/09/best-tools-help-create-elearning-course.jpg" alt="">
                    <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(24, 29, 56, .7);">
                        <div class="container">
                            <div class="row justify-content-start">
                                <div class="col-sm-10 col-lg-8">
                                    <h5 class="text-primary text-uppercase mb-3 animated slideInDown">Best Online Courses</h5>
                                    <h1 class="display-3 text-white animated slideInDown">Get Educated Online From Your Home</h1>
                                    <p class="fs-5 text-white mb-4 pb-2">Vero elitr justo clita lorem. Ipsum dolor at sed stet sit diam no. Kasd rebum ipsum et diam justo clita et kasd rebum sea sanctus eirmod elitr.</p>
                                    <a href="" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Read More</a>
                                    <a href="" class="btn btn-light py-md-3 px-md-5 animated slideInRight">Join Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Carousel End -->

        <!-- Courses Start -->
        <!-- Courses Start -->
        <div class="container">
            <div class="row">
                <div class="col-3 " style="background-color: #b0ecf1; height: 53rem; margin-top: 5rem;">
                    <!--                    <form action="Course" method="GET">-->
                    <form action="Course" method="GET">                        
                        <div class="input-group mt-4">
                            <div class="form-outline">
                                <input name="txt" value="${requestScope.txt}" type="search" id="txtCourses" class="form-control " placeholder="Search"style="width: 16.5rem;" />
                                <div id="showList">
                                    <ul class="list-group">

                                    </ul>
                                </div>
                            </div>
                            <!--                            <button type="submit" style="height: 2.4rem;" class="btn btn-primary">
                                                            <i class="fas fa-search"></i>
                                                        </button>-->
                        </div>
                        <!--                    </form>-->
                        <!--Auto Complete-->
                        <script type="text/javascript">
                            $(document).ready(function () {
                                $('#txtCourses').keyup(function () {
                                    var search = $('#txtCourses').val();
                                    if (search !== '' && search !== null)
                                    {
                                        $.ajax({
                                            type: 'POST',
                                            url: 'record.jsp',
                                            data: 'key=' + search,
                                            success: function (data)
                                            {
                                                $('#showList').html(data);
                                            }
                                        });
                                    } else
                                    {
                                        $('#showList').html('');
                                    }
                                });
                                $(document).on("click", "ol", function () {
                                    $('#txtCourses').val($(this).text());
                                    $('#showList').html('');
                                });
                            });
                        </script>

                        <hr style="border-top: 1px solid rgba(0,0,0,.1); border: 0;">

                        <div style="width:520px;margin:0px auto;margin-top:30px; margin-bottom: 30px;">
                            <h4>Sort by Date:</h4>
                            <table style="width:17.6rem;">
                                <tbody>
                                    <tr>
                                        <td>From:</td>
                                        <td><input name="begin" value="${beginDate}" type="date" style="width:14rem;" ></td>
                                    </tr>
                                    <tr>
                                        <td>To:</td>
                                        <td><input name="end" value="${endDate}" type="date" style="width:14rem;"></td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                        <hr style="border-top: 1px solid rgba(0,0,0,.1); border: 0;">
                        <div style="width:520px;margin:0px auto;margin-top:30px; margin-bottom: 30px;">
                            <h4>Feature Course:</h4>
                            <select name="feature">
                                <option ${requestScope.featured == 0?"selected":""} value="0">all</option>
                                <option ${requestScope.featured == 1?"selected":""} value="1">featured</option>
                            </select>
                        </div>
                        <hr style="border-top: 1px solid rgba(0,0,0,.1); border: 0;">
                        <div style="width:520px;margin:0px auto;margin-top:30px; margin-bottom: 30px;">
                            <h4>Category</h4>
                            <c:set var="listGrade" value="${requestScope.listCategoryCourse}"  />
                            <c:set var="checkCate" value="${requestScope.categoryCourseCheck}"  />
                            <select name="category" class="chosen" multiple=""  style="width:17.6rem;">
                                <c:forEach begin="0" end="${listGrade.size()-1}" var="i">

                                    <option ${checkCate[i]?"selected":""} value="${listGrade.get(i).id}">${listGrade.get(i).name}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <hr style="border-top: 1px solid rgba(0,0,0,.1); border: 0;">
                        <div style="width:520px;margin:0px auto;margin-top:30px; margin-bottom: 30px;  " >
                            <h4>Courses</h4>
                            <c:set var="listCourses" value="${requestScope.listSubCategoryCourse}"  />
                            <c:set var="checkTag" value="${requestScope.courseCheck}"  />
                            <select name="course" class="chosen" style="width:17.6rem;" multiple="">
                                <c:forEach begin="0" end="${listCourses.size()-1}" var="i">
                                    <option ${checkTag[i]?"selected":""} value="${listCourses.get(i).id}">${listCourses.get(i).name}</option>
                                </c:forEach>
                            </select>

                        </div>
                        <input type="submit" value="Search" style="margin-left: 6rem; background-color: #06BBCC;color: #FFFFFF; border-color: #FFFFFF; margin-bottom: 2rem; height: 2.7rem; width: 6rem;">
                    </form>
                    <script type="text/javascript">
                        $(".chosen").chosen();
                    </script>


                </div>

                <div class="col-9">
                    <!-- Courses Start -->
                    <div class="container-xxl py-1">
                        <div class="">
                            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                                <h6 class="section-title bg-white text-center text-primary px-3">Courses</h6>
                                <h1 class="mb-5">All Courses</h1>
                            </div>

                            <div class="row g-4 justify-content-center">
                                <c:forEach var="o" items="${listtxt}">

                                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                        <div class="course-item bg-light">
                                            <div class="position-relative overflow-hidden">
                                                <img class="img-fluid" style="max-width: 100%; width: 26rem; height: 13rem; " src="${o.cid.thumbnail}" alt="">
                                                <div class="w-100 d-flex justify-content-center position-absolute bottom-0 start-0 mb-4">
                                                    <a href="coursedetail?course_id=${o.cid.id}" class="flex-shrink-0 btn btn-sm btn-primary px-3 border-end" style="border-radius: 30px 0 0 30px;">Read More</a>
                                                    <a data-bs-toggle="modal" data-bs-target="#Enroll${o.cid.id}" class="flex-shrink-0 btn btn-sm btn-primary px-3" style="border-radius: 0 30px 30px 0;">Enroll</a>
                                                </div>
                                            </div>
                                            <div class="text-center p-4 pb-0">
                                                <p class="mb-0" style="text-decoration-line: line-through; color: red;">$ ${o.ppid.listprice}</p><h5 class="mb-0">$ ${o.ppid.saleprice}</h5>

                                                <h4 class="mb-4">${o.cid.name}</h4>
                                            </div>
                                            <div class="text-center  pb-0">
                                                <p class="mb-0" >${o.cid.tagline}</p>

                                            </div>
                                            <div class="d-flex border-top">
                                                <small class="flex-fill text-center border-end py-2"><i class="fa fa-user-tie text-primary me-2"></i>${o.cid.getOwner().getFullname()}</small>
                                            </div>
                                        </div>
                                    </div>
                                            
                                            
                                              <div class="modal fade bd-example-modal-lg" id="Enroll${o.cid.id}" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel${o.cid.id}"  aria-hidden="true">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="container">
                                                <div class="row registerbg">

                                                </div>
                                                <div class="row mt-4 mb-3 justify-content-between">
                                                    <div class="col-6 align-items-center">

                                                        <div class="my-1" >
                                                            ${o.cid.tagline}
                                                        </div>
                                                        <h2>
                                                            ${o.cid.name}
                                                        </h2>
                                                        <div class="my-4 mx-3">


                                                            <p>
                                                                <i class="fa-solid fa-book-open"></i> Professional lesson
                                                            </p>
                                                            <p>
                                                                <i class="fa-solid fa-circle-question"></i> Practice questions and quizzes
                                                            </p>
                                                            <p>
                                                                <i class="fa-solid fa-video"></i>  Video explaining
                                                            </p>
                                                            <p>
                                                                <i class="fa-solid fa-hourglass"></i>   Save time studying
                                                            </p>
                                                        </div>

                                                    </div>
                                                    <div class="col-6">
                                                        <img class="img-fluid img-thumbnail" style="width: 100%;" src="">

                                                    </div>
                                                </div>


                                            </div>

                                            <div class="text-center my-3">
                                                <h6 class="section-title bg-white text-center text-primary px-3" style="font-size:20px;">Pricing table</h6>

                                            </div>
                                            <div class="row mx-2">
                                                <div class="text-center">
                                                    The larger package you choose the more bucks you save. We guarantee that the packages we offer to you below, will help you achieve the full knowledge you need for this course. Thank you for choosing our system!
                                                </div>
                                                <div class="d-flex justify-content-between my-5" style="width: 95%;" >



                                                    <div class="pricepkg mx-2 col-4 card border-dark text-left py-4">
                                                        <h4 class="text-center font-weight-bold blue-text">
                                                            <strong>3 months</strong>
                                                        </h4>
                                                        For the experienced learners who need only the information needed to run the course
                                                        <div style="height:200px;">
                                                            <p class="mt-2 pt-2" style="border-top: solid grey 1px; font-size: 15px;">Unlimited watching videos in 3 months</p>
                                                            <p>Page workbook, questions and quizzes</p>
                                                            <p>Full set of power point slides</p>
                                                        </div>
                                                        <h4 class="text-center card-title">$3200</h4>
                                                        <a onclick="Checkout(1,${o.cid.id})" class="btn btn-success purchasebutton rounded-pill btn-outline-dark">
                                                            Purchase
                                                        </a>
                                                    </div>
                                                    <div class="pricepkg mx-2 col-4 card border-dark text-left py-4">
                                                        <h4 class="text-center font-weight-bold blue-text ">
                                                            <strong>6 months</strong>
                                                        </h4>
                                                        Ideal for an organization looking to extends their range of course
                                                        <div style="height:200px;">
                                                            <p class="mt-2 pt-2" style="border-top: solid grey 1px;">Unlimited watching in 6 months</p>
                                                            <p>Page workbook, questions and quizzes with answer</p>
                                                            <p>Full set of power point slides</p>
                                                        </div>
                                                        <h4 class="text-center card-title ">$6000</h4>
                                                        <a onclick="Checkout(2,${o.cid.id})" class="btn btn-warning purchasebutton rounded-pill btn-outline-dark">
                                                            Purchase
                                                        </a>
                                                    </div>
                                                    <div class="pricepkg mx-2 col-4 card border-dark text-left py-4">
                                                        <h4 class="font-weight-bold blue-text text-center">
                                                            <strong >Unilimited</strong>
                                                        </h4>
                                                        For those who new to this course step by step, who need this course for teaching
                                                        <div style="height:200px;">
                                                            <p class="mt-2 pt-2" style="border-top: solid grey 1px;">Unlimited studying time</p>
                                                            <p>Page workbook, reference Booklet unlock all slides</p>
                                                            <p>Full set questions and quizzes with answer</p>
                                                        </div>
                                                        <h4 class="card-title text-center">$9800</h4>
                                                        <a onclick="Checkout(3,${o.cid.id})" class="btn btn-danger purchasebutton rounded-pill btn-outline-dark">
                                                            Purchase
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="text-center">
                                                Have any problem with this section?
                                                <p>Contact us <a href="https://www.google.com.vn/">Support</a></p>
                                            </div>
                                            <div class="row mx-3 my-5">
                                                <div class="col-3">
                                                    <div class="d-flex">
                                                        <span>
                                                            <i style="font-size: 40px;;" class="fa-solid fa-globe"></i>
                                                        </span>
                                                        <h6 class="mx-2">
                                                            100% online courses
                                                        </h6>
                                                    </div>
                                                    <p>
                                                        Start instantly and learn at your own schedule.
                                                    </p>
                                                </div>
                                                <div class="col-3">
                                                    <div class="d-flex">
                                                        <span>
                                                            <i style="font-size: 40px;;" class="fa-solid fa-chart-line"></i>
                                                        </span>
                                                        <h6 class="mx-2">
                                                            Beginner Level
                                                        </h6>
                                                    </div>
                                                    <p>
                                                        No prior experience required.
                                                    </p>
                                                </div>
                                                <div class="col-3">
                                                    <div class="d-flex">
                                                        <span>
                                                            <i style="font-size: 40px;;" class="fa-solid fa-clipboard-list"></i>
                                                        </span>
                                                        <h6 class="mx-2">
                                                            Flexible Schedule
                                                        </h6>
                                                    </div>
                                                    <p>
                                                        Set and maintain flexible deadlines.
                                                    </p>
                                                </div>
                                                <div class="col-3">
                                                    <div class="d-flex">
                                                        <span>
                                                            <i style="font-size: 40px;;" class="fa-regular fa-address-card"></i>
                                                        </span>
                                                        <h6 class="mx-2">
                                                            Shareable Certificate
                                                        </h6>
                                                    </div>
                                                    <p>
                                                        Earn a Certificate upon completion
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </c:forEach>
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
                    </div>

                </div>

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
            <!--            <nav aria-label="Page navigation example" style="margin-left: 80%;">
                            <ul class="pagination">
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                </li>
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>-->
        </div>

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
    <!-- Footer Start -->
    <jsp:include page="footer.jsp"></jsp:include>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>

                <script>
                    function Checkout(pkg, value) {
                        console.log("aaaa");
                        $.ajax({
                            type: 'GET',
                            data: {pkg: pkg, value: value},
                            url: "/Online-Learning-SWP/CheckOut",
                            success: function (data) {
                                var row = document.getElementById("Enroll" + value);
                                row.innerHTML = data;
                            }
                        });
                    }
                </script>
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>
