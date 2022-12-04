<%-- 
    Document   : coursedetail
    Created on : Jun 13, 2022, 6:33:10 PM
    Author     : Laptop88
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
        <link href="css/login.css" rel="stylesheet">
        <link href="css/coursedetail.css" rel="stylesheet">
        <link href="css/pagination.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.5.1/chosen.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.5.1/chosen.min.css">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.5.1/chosen.jquery.min.js"></script>
        <script src="js/pagging.js"></script>


    </head>

    <body>

        <!--Course Detail-->

        <!-- Navbar Start -->
        <jsp:include page="header.jsp"></jsp:include>

            <!-- Navbar End -->


            <!-- Carousel Start -->
            <div class="container-fluid p-0 mb-5">
                <div class="owl-carousel header-carousel position-relative">
                    <div class="owl-carousel-item position-relative">
                        <img class="img-fluid" src="https://www.talentlms.com/old/wp-content/uploads/2018/08/what-tools-will-you-need.jpg" alt="">
                        <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(24, 29, 56, .7);">
                            <div class="container ">
                                <h1 class="display-3 text-white animated slideInDown d-flex justify-content-center">Course Detail</h1>
                                <div class="page_link text-white d-flex justify-content-center ml-2">
                                    <a class="text-white animated slideInDown" href="index.html">Home  /</a>
                                    <a class="text-white animated slideInDown mx-2" href="courses.html"> Courses  /</a>
                                    <a class="text-white animated slideInDown" href="course-details.html">Course Detail</a>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <!-- Carousel End -->


            <!-- Categories Start -->

            <!-- Courses Start -->
            <div class="container">
                <div class="row">
                    <div class="col-3 " style="background-color: #b0ecf1; height: 53rem; margin-top: 5rem;">
                    <!--                    <form action="Course" method="GET">-->
                    <form action="Course" method="GET">                        
                        <div class="input-group mt-4">
                            <div class="form-outline">
                                <input name="txt" value="${course.cid.name}" type="search" id="txtCourses" class="form-control " placeholder="Search"style="width: 16.5rem;" />
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
                        

                        <hr style="border-top: 1px solid rgba(0,0,0,.1); border: 0;">

                        <div style="width:520px;margin:0px auto;margin-top:30px; margin-bottom: 30px;">
                            <h4>Sort by Date:</h4>
                            <table style="width:17.6rem;">
                                <tbody>
                                    <tr>
                                        <td>From:</td>
                                        <td><input name="begin"  type="date" style="width:14rem;" ></td>
                                    </tr>
                                    <tr>
                                        <td>To:</td>
                                        <td><input name="end"  type="date" style="width:14rem;"></td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                        <hr style="border-top: 1px solid rgba(0,0,0,.1); border: 0;">
                        <div style="width:520px;margin:0px auto;margin-top:30px; margin-bottom: 30px;">
                            <h4>Feature Course:</h4>
                            <select name="feature">
                                <option value="0">all</option>
                                <option value="1">featured</option>
                            </select>
                        </div>
                        <hr style="border-top: 1px solid rgba(0,0,0,.1); border: 0;">
                        <div style="width:520px;margin:0px auto;margin-top:30px; margin-bottom: 30px;">
                            <h4>Category</h4>
                            <c:set var="listGrade" value="${requestScope.listCategoryCourse}"  />
                            <select name="category" class="chosen" multiple=""  style="width:17.6rem;">
                                <c:forEach begin="0" end="${listGrade.size()-1}" var="i">

                                    <option ${course.cid.categorycourse.categorycourse.id==listGrade.get(i).id?"selected":""} value="${listGrade.get(i).id}">${listGrade.get(i).name}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <hr style="border-top: 1px solid rgba(0,0,0,.1); border: 0;">
                        <div style="width:520px;margin:0px auto;margin-top:30px; margin-bottom: 30px;  " >
                            <h4>Courses</h4>
                            <c:set var="listCourses" value="${requestScope.listSubCategoryCourse}"  />
                            <select name="course" class="chosen" style="width:17.6rem;" multiple="">
                                <c:forEach begin="0" end="${listCourses.size()-1}" var="i">
                                    <option ${course.cid.categorycourse.subcategorycourse.id==listCourses.get(i).id?"selected":""} value="${listCourses.get(i).id}">${listCourses.get(i).name}</option>
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
                        <div class="container-xxl category">
                            <section class="course_details_area section_gap">
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-lg-8 course_details_left">
                                            <div class="main_image">
                                                <img class="img-fluid" src="${course.cid.thumbnail}" alt="">
                                        </div>
                                        <div class="content_wrapper">
                                            <h4 class="title">${course.cid.name}</h4>
                                            <div class="content">
                                                ${course.cid.description}
                                                <br>
                                            </div>

     

                                            <h4 class="title">Course Outline</h4>
                                            <div class="content">
                                                <ul class="course_list">
                                                    <c:forEach var="t" items="${listopic}">
                                                        <li class="justify-content-between d-flex">
                                                            <p>${t.topic_name}</p>
                                                            <a class="primary-btn text-uppercase" href="#">View Details</a>
                                                        </li>
                                                    </c:forEach>


                                                </ul>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="col-lg-4 right-contents">
                                        <ul>
                                            <li>
                                                <a class="justify-content-between d-flex" href="#">
                                                    <p>Trainer</p>
                                                    <span class="or">${course.cid.owner.fullname}</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a class="justify-content-between d-flex" href="#">
                                                    <p>Course Fee </p>
                                                    <span class="or">$${course.ppid.saleprice}</span>
                                                    <span class="text-decoration-line-through">$${course.ppid.listprice}</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a class="justify-content-between d-flex" href="#">
                                                    <p>Lessons</p>
                                                    <span>${numcourse.numberoflessons}</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a class="justify-content-between d-flex" href="#">
                                                    <p>Duration </p>
                                                    <span>${course.ppid.duration}</span>
                                                </a>
                                            </li>
                                        </ul>
                                        <a href="#" class="primary-btn text-uppercase enroll">Enroll the course</a>

                                        <h4 class="title">Reviews</h4>
                                        <div class="content">
                                            <div class="review-top row pt-40">
                                                <div class="col-lg-12">


                                                </div>
                                            </div>
                                            <div class="feedeback">
                                                <h6>Your Feedback</h6>
                                                <textarea name="feedback" class="form-control" cols="10" rows="10"></textarea>
                                                <div class="mt-2 text-center">
                                                    <a href="#" class="primary-btn text-uppercase">Submit</a>
                                                </div>
                                            </div>
                                            <div class="comments-area mb-30">
                                                <div class="comment-list">
                                                    <div class="single-comment single-reviews justify-content-between d-flex">
                                                        <div class="user justify-content-between d-flex">
                                                            <div class="thumb">
                                                                <img src="" alt="">
                                                            </div>
                                                            <div class="desc">
                                                                <h5><a href="#">Emilly Blunt</a>
                                                                    <div class="star">
                                                                        <span class="fa fa-star checked"></span>
                                                                        <span class="fa fa-star checked"></span>
                                                                        <span class="fa fa-star checked"></span>
                                                                        <span class="fa fa-star"></span>
                                                                        <span class="fa fa-star"></span>
                                                                    </div>
                                                                </h5>
                                                                <p class="comment">
                                                                    This course is good
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="comment-list">
                                                    <div class="single-comment single-reviews justify-content-between d-flex">
                                                        <div class="user justify-content-between d-flex">
                                                            <div class="thumb">
                                                                <img src="img/blog/c2.jpg" alt="">
                                                            </div>
                                                            <div class="desc">
                                                                <h5><a href="#">Elsie Cunningham</a>
                                                                    <div class="star">
                                                                        <span class="fa fa-star checked"></span>
                                                                        <span class="fa fa-star checked"></span>
                                                                        <span class="fa fa-star checked"></span>
                                                                        <span class="fa fa-star"></span>
                                                                        <span class="fa fa-star"></span>
                                                                    </div>
                                                                </h5>
                                                                <p class="comment">
                                                                    Good & Quality
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="comment-list">
                                                    <div class="single-comment single-reviews justify-content-between d-flex">
                                                        <div class="user justify-content-between d-flex">
                                                            <div class="thumb">
                                                                <img src="img/blog/c3.jpg" alt="">
                                                            </div>
                                                            <div class="desc">
                                                                <h5><a href="#">Maria Luna</a>
                                                                    <div class="star">
                                                                        <span class="fa fa-star checked"></span>
                                                                        <span class="fa fa-star checked"></span>
                                                                        <span class="fa fa-star checked"></span>
                                                                        <span class="fa fa-star"></span>
                                                                        <span class="fa fa-star"></span>
                                                                    </div>
                                                                </h5>
                                                                <p class="comment">
                                                                    The best cheap course 
                                                                </p>
                                                            </div>
                                                        </div>
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

            </div>
        </div>

    </div>

    <!-- Footer Start -->
    <jsp:include page="footer.jsp"></jsp:include>
    <!-- Footer End -->


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

