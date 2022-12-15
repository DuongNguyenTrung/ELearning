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

    </head>

    <body>
        <jsp:include page="header.jsp"></jsp:include>
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
                                        <a href="course.jsp" class="btn btn-light py-md-3 px-md-5 animated slideInRight">Join Now</a>
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

        <div class="container">
            <div class="text-center " >
                <h6 class="section-title bg-white text-center text-primary">My Course</h6>
                <h3 class="mb-5"></h3>
            </div>


            <div class="d-flex justify-content-between">
                <h3>
                    List Courses
                </h3>
                <div>
                    <div>
                        <input style="height: 38px; width:215px;" type="text" placeholder="Search my courses" oninput="Searchbox(this.value,${account.id})"> 
                        <button class="btn btn-primary"><i class="fa-brands fa-searchengin"></i></button>
                    </div>
                    <div id="myDropdown" style="display: none;" class=" px-2 py-3 dropdown-content">

                    </div>
                </div>
            </div>
            <div class="row mt-5 ">
                <c:forEach items="${courses}" var="a">
                    <div class="px-3  col-md-3 col-sm-6 my-4 wow rubberBand">
                        <div class=" card card-mycourse">

                            <div style="position:relative;">



                                <img class=" img-fluid card-img-top" style="height:180px" src="${a.thumbnail}" > <div style="position:absolute; right: 5px; top:5px; z-index: 90;">
                                    <a href="#">
                                        <i  style="color:white; font-size:25px;" class=" fa-solid fa-circle-info"></i>
                                    </a>

                                </div>
                            </div>
                            <div class="card-body">
                                <h6 class="card-title">${a.name}</h6>
                                <p class="card-text mb-3">${a.tagline}</p>

                                <a href="lessonview?cid=${a.id}&lid" class="mt-2 btn btn-primary">Resume course</a>
                            </div>
                            <div class=" card-header">
                                <i class="fa-regular fa-clock"></i> End date: ${a.validto}
                            </div>
                        </div>
                    </div>
                </c:forEach>


            </div>
            <div class="d-flex justify-content-between">
                <h3>
                    My Order
                </h3>
                <div>
                    <div id="myDropdown" style="display: none;" class=" px-2 py-3 dropdown-content">

                    </div>
                </div>
            </div>
            <div class="row mt-5 ">
                <c:forEach items="${inactiveCourses}" var="a">
                    <div class="px-3  col-md-3 col-sm-6 my-4 wow rubberBand">
                        <div class=" card card-mycourse">

                            <div style="position:relative;">



                                <img class=" img-fluid card-img-top" style="height:180px" src="${a.thumbnail}" > <div style="position:absolute; right: 5px; top:5px; z-index: 90;">
                                    <a href="#">
                                        <i  style="color:white; font-size:25px;" class=" fa-solid fa-circle-info"></i>
                                    </a>

                                </div>
                            </div>
                            <div class="card-body">
                                <h6 class="card-title">${a.name}</h6>
                                <p class="card-text mb-3">${a.tagline}</p>

                                <a href="lessonview?cid=${a.id}&lid" class="mt-2 btn btn-primary">Verify to Enroll course</a>
                            </div>
                            <div class=" card-header">
                                <i class="fa-regular fa-clock"></i> End date: ${a.validto}
                            </div>
                        </div>
                    </div>
                </c:forEach>


            </div>
        </div>
    </body>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script>
        function Searchbox(text, a) {
            console.log(text);
            console.log(a);
            var row = document.getElementById("myDropdown");
            if (text != "")
            {
                row.style.display = "block";
                $.ajax({
                    type: 'POST',
                    data: {text: text, id: a},
                    url: "/Online-Learning-SWP/SearchMyCourse",
                    success: function (data) {
                        var row = document.getElementById("myDropdown");
                        row.innerHTML = data;
                    }
                });
            } else {
                row.style.display = "none";
            }
        }
    </script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>
