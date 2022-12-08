<%-- 
    Document   : home
    Created on : May 23, 2022, 7:46:02 AM
    Author     : win
--%>
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
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <style>
            .social-container a {
                border: 1px solid #DDDDDD;
                border-radius: 50%;
                display: inline-flex;
                justify-content: center;
                align-items: center;
                margin: 0 5px;
                height: 40px;
                width: 40px;
            }
            .social-container {
                margin: 20px 0;
            }
        </style>
    </head>

    <body>
        <jsp:include page="header.jsp"></jsp:include>
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
                                        <h3 class="display-4 text-white animated slideInDown">The Best Online Learning Platform</h3>
                                        <p class="fs-5 text-white mb-4 pb-2">Vero elitr justo clita lorem. Ipsum dolor at sed stet sit diam no. Kasd rebum ipsum et diam justo clita et kasd rebum sea sanctus eirmod elitr.</p>
                                        <a href="" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Read More</a>
                                    <c:if test="${sessionScope.account==null}">
                                        <a href="#" data-bs-target="#loginModal" data-bs-toggle="modal" class="btn btn-light py-md-3 px-md-5 animated slideInRight">Join Now</a>
                                    </c:if>
                                    <c:if test="${sessionScope.account!=null}">
                                        <a href="" class="btn btn-light py-md-3 px-md-5 animated slideInRight">Join Now</a>
                                    </c:if>
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
                                    <h3 class="display-4 text-white animated slideInDown">Get Educated Online From Your Home</h3>
                                    <p class="fs-5 text-white mb-4 pb-2">Vero elitr justo clita lorem. Ipsum dolor at sed stet sit diam no. Kasd rebum ipsum et diam justo clita et kasd rebum sea sanctus eirmod elitr.</p>
                                    <a href="" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Read More</a>
                                    <c:if test="${sessionScope.account==null}">
                                        <a href="#" data-bs-target="#loginModal" data-bs-toggle="modal" class="btn btn-light py-md-3 px-md-5 animated slideInRight">Join Now</a>
                                    </c:if>
                                    <c:if test="${sessionScope.account!=null}">
                                        <a href="course.jsp" class="btn btn-light py-md-3 px-md-5 animated slideInRight">Join Now</a>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Carousel End -->
        <div class="row g-4 justify-content-center">
            <div class="col-4 side" >
                <!-- Blog Start -->
                <div class="container-xxl">
                    <div class="container">
                        <div class="text-center " >
                            <h6 class="section-title bg-white text-center text-primary">Posts</h6>
                            <h3 class="mb-5">Hot Posts</h3>
                        </div>
                        <div class="row justify-content-center">
                            <c:forEach var="o" items="${listTopPost}">

                                <div class="row p-4" >
                                    <div class="blog-item bg-light row">
                                        <div class="position-relative overflow-hidden col-md-4">
                                            <img class="img-fluid h-100 w-100" src="data:image/png;base64,${o.thumbnail}" alt="">
                                            <div class="w-100 d-flex justify-content-center position-absolute bottom-0 start-0 mb-4">
                                                <a href="blogs?action=detail&blog_id=${o.id}" class="flex-shrink-0 btn btn-sm btn-primary px-3 border-end"
                                                   style="border-radius: 30px 0 0 30px;">Read More</a>

                                            </div>
                                        </div>
                                        <div class=" p-4 pb-0 col-md-8">

                                            <h6 class="mb-4">${o.title} ....</h6>
                                            <p>${o.date}</p>
                                        </div>

                                    </div>
                                </div>
                            </c:forEach>  
                        </div>
                        <a class="btn btn-light" style="margin-left: 35%;" href="blogs"><h6>View All</h6></a>
                        <div class="text-center" style="margin-top: 2rem;">
                            <h6 class="section-title bg-white text-center text-primary"></h6>
                            <h3 class="mb-5">Newest Post</h3>
                        </div>
                        <div class="row p-4">
                            <div class="blog-item bg-light row">
                                <div class="position-relative overflow-hidden col-md-4">
                                    <img class="img-fluid h-100 w-100" src="data:image/png;base64,${newestPost.thumbnail}" alt="">
                                    <div class="w-100 d-flex justify-content-center position-absolute bottom-0 start-0 mb-4">
                                        <a href="blogs?action=detail&blog_id=${newestPost.id}" class="flex-shrink-0 btn btn-sm btn-primary px-3 border-end"
                                           style="border-radius: 30px 0 0 30px;">Read More</a>

                                    </div>
                                </div>
                                <div class=" p-4 pb-0 col-md-8">

                                    <h6 class="mb-4">${newestPost.title} ....</h6>
                                    <p>${newestPost.date}</p>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
                <!-- Blog End -->
            </div>
            <div class="col-8">
                <!-- Courses Start -->
                <div class="container-xxl">
                    <div class="container">

                        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                            <h6 class="section-title bg-white text-center text-primary px-3">Courses</h6>
                            <h1 class="mb-5">Popular Courses</h1>
                        </div>

                        <div class="row g-4 justify-content-center">
                            <c:forEach var="o" items="${listtop}">
                                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                    <div class="course-item bg-light">
                                        <div class="position-relative overflow-hidden py-2" >
                                            <img class="img-fluid" src="${o.thumbnail}" alt="" style="max-width: 100%; width: 26rem; height: 15rem; ">
                                            <div class="w-100 d-flex justify-content-center position-absolute bottom-0 start-0 mb-4">
                                                <a href="coursedetail?course_id=${o.id}" class="flex-shrink-0 btn btn-sm btn-primary px-3 border-end"
                                                   style="border-radius: 30px 0 0 30px;">Read More</a>
                                                <c:if test="${account==null}">
                                                    <a data-bs-toggle="modal" data-bs-target="#loginModal"
                                                       class=" flex-shrink-0 btn btn-sm btn-primary px-3"
                                                       style="border-radius: 0 30px 30px 0;">Join Now</a>
                                                </c:if>
                                                <c:if test="${account!=null}">
                                                    <a data-bs-toggle="modal" data-bs-target="#Enroll${o.id}"
                                                       class=" flex-shrink-0 btn btn-sm btn-primary px-3"
                                                       style="border-radius: 0 30px 30px 0;">Join Now</a>
                                                </c:if>

                                            </div>
                                        </div>
                                        <div class="text-center p-4 pb-0">

                                            <h5 class="mb-4">${o.name}</h5>
                                            <p>${o.tagline}</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal fade bd-example-modal-lg" id="Enroll${o.id}" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel${o.id}"  aria-hidden="true">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="container">
                                                <div class="row registerbg">

                                                </div>
                                                <div class="row mt-4 mb-3 justify-content-between">
                                                    <div class="col-6 align-items-center">

                                                        <div class="my-1" >
                                                            ${o.tagline}
                                                        </div>
                                                        <h2>
                                                            ${o.name}
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
                                                        <img class="img-fluid img-thumbnail" style="width: 100%;" src="${o.thumbnail}">

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
                                                        <a onclick="Checkout(1,${o.id})" class="btn btn-success purchasebutton rounded-pill btn-outline-dark">
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
                                                        <a onclick="Checkout(2,${o.id})" class="btn btn-warning purchasebutton rounded-pill btn-outline-dark">
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
                                                        <a onclick="Checkout(3,${o.id})" class="btn btn-danger purchasebutton rounded-pill btn-outline-dark">
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
                        </div>
                    </div>
                </div>
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

                <!-- Courses End -->

                <!-- About Start -->
                <!--        Newest Course-->
                <div class="container-xxl py-2">
                    <div class="container">
                        <div class="row g-5">
                            <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s" style="min-height: 400px;">
                                <div class="position-relative h-100">
                                    <img class="img-fluid position-absolute w-100 h-100" src="${newestCourse.thumbnail}" alt=""
                                         style="object-fit: cover;">
                                </div>
                            </div>
                            <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.3s">
                                <h6 class="section-title bg-white text-start text-primary pe-3">Newest Courses</h6>
                                <h3 class="mb-4">Welcome to eLEARNING</h3>

                                <p class="mb-4">${newestCourse.description}
                                </p>
                                <div class="row gy-2 gx-4 mb-4">
                                    <div class="col-sm-6">
                                        <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>Topic</p>
                                    </div>
                                    <div class="col-sm-6">
                                        <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>Topic</p>
                                    </div>
                                    <div class="col-sm-6">
                                        <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>Topic</p>
                                    </div>
                                    <div class="col-sm-6">
                                        <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>Topic</p>
                                    </div>
                                    <div class="col-sm-6">
                                        <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>Topic</p>
                                    </div>
                                    <div class="col-sm-6">
                                        <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>Topic</p>
                                    </div>
                                </div>
                                <a class="btn btn-primary py-3 px-5 mt-2" href="">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- About End -->


                <!-- Categories Start -->
                <div class="container-xxl py-2 category">
                    <div class="container">
                        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                            <h6 class="section-title bg-white text-center text-primary px-3">Categories</h6>
                            <h1 class="mb-5">Courses Categories</h1>
                        </div>
                        <div class="row">
                            
                            <div class="row">
                                <c:forEach var="o" items="${listCategory}">
                                    <div class="col-md-4">
                                        <div class="col-lg-12 col-md-12 wow zoomIn" data-wow-delay="0.1s">
                                            <a class="position-relative d-block overflow-hidden" href="Course?category=${o.id}">
                                                <img class="img-fluid" style="max-width:  100%; width:26rem; height:13rem;"  src="${o.image}" alt="">
                                                <div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3"
                                                     style="margin: 1px;">
                                                    <h5 class="m-0">${o.name}</h5>
                                                    <!--                                        <small class="text-primary">49 Courses</small>-->
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </c:forEach>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- Categories Start -->



                <!-- Blog End -->

            </div>
        </div>

        <!-- Team Start -->
        <div class="container-xxl py-2">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="section-title bg-white text-center text-primary px-3">Instructors</h6>
                    <h1 class="mb-5">Expert Instructors</h1>
                </div>
                <div class="row g-4 justify-content-center">
                    <c:forEach var="o" items="${listExpert}">
                        <div class="col-lg-2 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                            <div class="team-item bg-light">
                                <div class="overflow-hidden">
                                    <img height="50" class="img-fluid" src="${o.avatar}" alt="">
                                </div>
                                <div class="position-relative d-flex justify-content-center" style="margin-top: -23px;">
                                    <div class="bg-light d-flex justify-content-center pt-2 px-1">
                                    </div>
                                </div>
                                <div class="text-center p-4">
                                    <h5 class="mb-0">${o.fullname}</h5>
                                    <small>Designation</small>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <!-- Team End -->
        <!--Trigger-->

        <!--Modal pop-up profile-->
        <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" id="profilesetting" aria-labelledby="myLargeModalLabel" aria-hidden="true">



            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="row">

                        <div  class="col-md-3 border-right ">
                            <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                                <div style="width: 180px; height: 180px; object-fit: cover;" class="mb-4 align-items-center justify-content-center">
                                    <img id="avt-img"  class=" thumbnail img-fluid rounded-circle" src="${account.avatar}" alt=""> 
                                </div>
                                <span
                                    class="font-weight-bold"> <h5> ${account.username}</h5></span><span
                                    class="text-black-50">${account.email}</span><span> </span></div>
                        </div>

                        <div  class="col-md-5 border-right">
                            <form id="myform" action="profile?link=home" method="post" enctype="multipart/form-data">
                                <div class="p-3 py-5">
                                    <div class="d-flex justify-content-between align-items-center mb-3">
                                        <h4 class="text-right btn btn-primary" onclick="switchProfile(1)">Profile Settings</h4>
                                    </div>
                                    <div id="profile" >
                                        <div class="row mt-2" style="text-align: left; margin-bottom: 10px;">
                                            <div class="col-md-12 mt-2"><label class="labels mb-2" for="username">Username</label>
                                                <input
                                                    id="username" name="username" type="text" pattern="[^' ']+" class="form-control"
                                                    placeholder="Enter full name" disabled value="${account.username}" required></div>
                                            <div class="col-md-12 mt-2"><label class="labels mb-2" for="fullname">Full Name</label><input
                                                    id="fullname" name="fullname" type="text" class="form-control"
                                                    placeholder="Enter full name" disabled="true" value="${account.fullname}" required></div>
                                            <div class="col-md-12 mt-2 mb-2">Gender    </div>
                                            <div class="col-md-12" style="display:flex;">
                                                <div class="ml-5 form-check form-check-inline">
                                                    <input class="form-check-input" disabled type="radio" name="gender" id="male" value="1" ${account.gender eq "True"? "checked":""}>
                                                    <label class="form-check-label" for="male">
                                                        Male
                                                    </label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                    <input ${account.gender eq "False"? "checked":""} disabled class="form-check-input" type="radio" value="0" name="gender" id="female">
                                                    <label class="form-check-label" for="female">
                                                        Female
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-md-12 mt-2"><label class="labels mb-2" for="phonenumber">Phone
                                                    Number</label><input   accept=".jpg,.jpeg,.png" id="phonenumber" name="phonenumber" type="tel"
                                                                       class="form-control" placeholder="Enter phone number" disabled value="${account.phone}" required></div>
                                            <div class="col-md-12 mt-2"><label class="labels mb-2" for="avatar">Avatar</label><br>
                                                <label class="custom-file-upload btn btn-primary">
                                                    Choose File <input   id="avatar" name="avatar" type="file" disabled onchange="loadFile(event)">
                                                </label>

                                            </div>
                                            <div class="col-md-8 mt-2"><label class="labels" for="output">Preview</label><br>
                                                <label class="crop">
                                                    <img id="output" style="display: none;" class=" img-fluid img-thumbnail" src="${account.avatar}" alt=""> 
                                                </label>

                                            </div>
                                            <div class="col-md-12">
                                                <label style="display: none;" id="remove-pic" class="custom-file-upload btn btn-primary mt-2" onclick="deleteFile()">
                                                    Remove 
                                                </label>
                                            </div>
                                        </div>
                                        <div id="editbutton" class="mt-5 text-center"><button onclick="EditProfile()" class="btn btn-dark btn-outline-light"
                                                                                              type="button"><i class="fa-solid fa-pen-to-square"></i> Edit Profile</button></div>
                                        <div  style="display: none;" id="savebutton" class="mt-5 text-center"><button   class="btn btn-dark btn-outline-light"
                                                                                                                        type="submit">Save Profile</button></div>
                                    </div>
                                </div>
                            </form>
                        </div>


                        <div class="col-md-4">


                            <form action="changePass" method="POST">

                                <div class="p-3 py-5">
                                    <div class="d-flex justify-content-between align-items-center mb-3">
                                        <h4 class="text-right btn btn-primary "onclick="switchProfile(2)" >Change Password</h4>
                                    </div>
                                    <div class=" mb-5">
                                        <c:if test="${error !=null}">
                                            <div class="alert alert-danger">
                                                <strong>Opps!</strong> ${error}
                                            </div>
                                        </c:if>
                                        <c:if test="${success !=null}">
                                            <div class="alert alert-success">
                                                <strong>Ok!</strong> ${success}
                                            </div>
                                        </c:if>
                                    </div>
                                    <div id="changepassword" class="p-3 py-5"
                                         style="text-align: left; margin-bottom: 10px; display: none;" >
                                        <label class="labels" for="oldpassword">Current password</label><input id="oldpassword"
                                                                                                               name="oldpassword" type="password" class="form-control" value="">

                                        <label class="labels" for="newpassword">New password</label><input id="newpassword"
                                                                                                           name="newpassword" type="password" class="form-control" value="">
                                        <label class="labels" for="newpassword2">Confirm your new password</label><input id="newpassword2"
                                                                                                                         name="newpassword2" type="password" class="form-control" value="">
                                        <input  type="submit" class="mt-5 btn btn-dark btn-outline-light" value="Submit">
                                    </div>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>

    </div>
    <script>
        function EditProfile() {

            var a = document.getElementById("username");
            var b = document.getElementById("fullname");
            var c = document.getElementById("male");
            var d = document.getElementById("female");
            var e = document.getElementById("phonenumber");
            var f = document.getElementById("avatar");
            var g = document.getElementById("savebutton");
            var h = document.getElementById("editbutton");
            a.disabled = false;
            b.disabled = false;
            c.disabled = false;
            d.disabled = false;
            e.disabled = false;
            f.disabled = false;
            g.style.display = "block";
            h.style.display = "none";

        }
        ;
    </script>
    <script>
        var loadFile = function (event) {
            var output = document.getElementById('output');
            var removepic = document.getElementById('remove-pic');
            output.src = URL.createObjectURL(event.target.files[0]);
            output.style.display = "block";
            output.onload = function () {
                URL.revokeObjectURL(output.src) // free memory
                removepic.style.display = "block";

            }

        };
    </script>
    <script>
        function deleteFile() {
            var output = document.getElementById('output');
            var removepic = document.getElementById('remove-pic');
            var avtimg = document.getElementById('avt-img');
//     document.getElementById("myform").reset();
            output.style.display = "none";
            document.getElementById("avatar").value = null;
            output.src = avtimg.src;
            output.onload = function () {
                removepic.style.display = "none";
            }
        }
        ;
    </script>

    <script>
        function switchProfile(x) {
            console.log(1);
            console.log(2);
            var a = document.getElementById("profile");
            var b = document.getElementById("changepassword");
            if (x == 2) {

                a.style.display = "none";
                b.style.display = "block";
            } else {
                a.style.display = "block";
                b.style.display = "none";
            }
            console.log(a);
            console.log(b);
        }
    </script>


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
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

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
<!--register end-->
<jsp:include page="footer.jsp"></jsp:include>


<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


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
