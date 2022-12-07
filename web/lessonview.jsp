<%-- 
    Document   : lessonview
    Created on : Jun 26, 2022, 6:22:46 PM
    Author     : Laptop88
--%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        <link href="css/login.css" rel="stylesheet">
        <link href="css/lessonview.css" rel="stylesheet">
        <link href="css/pagination.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.5.1/chosen.min.css">

        <style>

            .rate{

                border-bottom-right-radius: 12px;
                border-bottom-left-radius: 12px;

            }



            .rating {
                display: flex;
                flex-direction: row-reverse;
                justify-content: center
            }

            .rating>input {
                display: none
            }

            .rating>label {
                position: relative;
                width: 1em;
                font-size: 30px;
                font-weight: 300;
                color: #FFD600;
                cursor: pointer
            }

            .rating>label::before {
                content: "\2605";
                position: absolute;
                opacity: 0
            }

            .rating>label:hover:before,
            .rating>label:hover~label:before {
                opacity: 1 !important
            }

            .rating>input:checked~label:before {
                opacity: 1
            }

            .rating:hover>input:checked~label:before {
                opacity: 0.4
            }


            .buttons{
                top: 36px;
                position: relative;
            }


            .rating-submit{
                border-radius: 15px;
                color: #fff;
                height: 49px;
            }


            .rating-submit:hover{

                color: #fff;
            }
        </style>
    </head>

    <body>

        <!--Course Detail-->

        <!-- Navbar Start -->
        <jsp:include page="header.jsp"></jsp:include>

            <!-- Navbar End -->



            <!-- Categories Start -->

            <!-- Courses Start -->
            <div class="container" id="content">
                <div class="d-flex my-4 justify-content-between">
                    <div class="page_link d-flex">
                        <a class="animated slideInDown" href="">Home  /</a>
                        <a class="animated slideInDown mx-2" href=""> My Courses  /</a>
                        <a class="animated slideInDown" href="">${lesson.name}</a>
                </div>
                <div class="page_link">
                    <a class="animated slideInDown" href="ChooseLessonView?cid=${listtopic.get(0).course.id}&lid=${lesson.id}"><i class="fa-solid fa-angle-left"></i>   Previous</a>
                    <a class="animated slideInDown mx-2" href="ChooseLessonViewNext?cid=${listtopic.get(0).course.id}&lid=${lesson.id}">Next   <i class="fa-solid fa-angle-right"></i></a>
                </div>
            </div>
            <div class="d-flex" id="wrapper">
                <!-- Sidebar-->

                <div class="border-0 bg-white" id="sidebar-wrapper" >

                    <div class="sidebar-heading border-bottom fw-bold">Start Bootstrap</div>
                    <c:forEach items="${listtopic}"  var="t">


                        <div class="list-group list-group-flush">
                            <div class="accordion accordion-flush" id="accordionFlushExample">
                                <div class="accordion-item border-0">
                                    <h2 class="accordion-header" id="flush-heading${t.id}">
                                        <button class="accordion-button collapsed fw-bold" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse${t.id}" aria-expanded="false" aria-controls="flush-collapse${t.id}">
                                            ${t.topic_name}
                                        </button>
                                    </h2>

                                    <c:forEach items="${listlearn}" var="l">

                                        <div id="flush-collapse${t.id}" class="accordion-collapse collapse ${t.id == lesson.topic.id ? "show": ""}" aria-labelledby="flush-heading${t.id}" data-bs-parent="#accordionFlushExample">
                                            <c:if test="${l.lesson.topic.id == t.id}">

                                                <a href="lessonview?cid=${t.course.id}&lid=${l.lesson.id}" class="hover-underline-animation ${l.lesson.id == lesson.id ? "btn btn-light": ""}" >

                                                    <div class="accordion-body" style="font-size: 15px">

                                                        <c:if test="${l.status != 1}">
                                                            <span class="mr-2 fw-bold">
                                                                <c:if test="${l.lesson.type.id == 2}">
                                                                    <i class="fa-solid fa-circle-play mr-2"></i>Video:
                                                                </c:if>
                                                                <c:if test="${l.lesson.type.id == 1}">
                                                                    <i class="fa-solid fa-book-open mr-2"></i>Reading:
                                                                </c:if>
                                                            </span>

                                                        </c:if>
                                                        <c:if test="${l.status == 1}">
                                                            <span class="mr-2 fw-bold">
                                                                <c:if test="${l.lesson.type.id == 2}">
                                                                    <i class="fa-solid fa-circle-check mr-2 text-success"></i>Video:
                                                                </c:if>
                                                                <c:if test="${l.lesson.type.id == 1}">
                                                                    <i class="fa-solid fa-circle-check mr-2 text-success"></i>Reading:
                                                                </c:if>
                                                            </span>

                                                        </c:if>

                                                        <c:if test="${l.lesson.type.id == 3}">
                                                            <c:if test="${userquiz.status == 1}">
                                                                <span class="mr-2 fw-bold"><i class="fa-solid fa-circle-check mr-2 text-success"></i>Quiz:</span>
                                                            </c:if>
                                                            <c:if test="${userquiz.status != 1}">
                                                                <span class="mr-2 fw-bold"><i class="fa-solid fa-square-check mr-2"></i>Quiz:</span>
                                                            </c:if>
                                                        </c:if>
                                                        <span class="">${l.lesson.name}</span>

                                                    </div>

                                                </a>

                                            </c:if>

                                        </div>
                                    </c:forEach>
                                </div>
                            </div>

                        </div>
                    </c:forEach>
                </div>
                <!-- Page content wrapper-->
                <div id="page-content-wrapper" class="border-0 bg-white">
                    <!-- Top navigation-->
                    <nav class="navbar navbar-expand-lg border-bottom">
                        <div class="container-fluid">
                            <button class="btn btn-primary" id="sidebarToggle"><i class="fa-solid fa-bars"></i></button>
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                    aria-expanded="false" aria-label="Toggle navigation"><span
                                    class="navbar-toggler-icon"></span></button>
                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav ms-auto mt-2 mt-lg-0">
                                    <li class="nav-item">
                                        <svg width="40" height="40">
                                        <circle cx="20" cy="20" r="16" fill="#06BBCC" />
                                        <text x="50%" y="50%" text-anchor="middle" fill="white" font-size="14px" font-family="Arial" dy=".3em"><fmt:formatNumber type="percent" maxIntegerDigits="3" value="${countlearned/countlearn}"></fmt:formatNumber></text>
                                        </svg>${countlearned}/${countlearn} Lessons
                                    </li>

                                    <li class="nav-item"><a class="nav-link" href="#"><i class="fa-solid fa-note-sticky"></i>  Note</a></li>
                                    <li class="nav-item"><a data-bs-toggle="modal" data-bs-target="#feedbackModal"
                                                            class=" flex-shrink-0 btn btn-sm btn-primary px-3"
                                                            style="border-radius: 0 30px 30px 0;">Feedback Now</a></li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                    <!-- Page content-->

                    <div class="container-fluid m-3">
                        <c:if test="${lesson.type.id == 2}">
                            <div class="embed-responsive embed-responsive-16by9 my-2">
                                <iframe src="${lesson.video_link}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            </div>
                            <div>
                                ${lesson.content}
                            </div>
                        </c:if>
                        <c:if test="${lesson.type.id == 1}">
                            <div>
                                ${lesson.content}
                            </div>
                        </c:if>
                        <c:if test="${lesson.type.id == 3}">
                            <div class="m-5">
                                <div class="">
                                    <h3>QUIZ</h3>
                                    <h1>${lesson.name}</h1>
                                    <p class="ml-2">Quiz: ${quiz.duration} min | ${quiz.number_question} Questions</p>
                                </div>
                                <c:if test="${userquiz.status == 1}">
                                    <div class="d-flex justify-content-between mt-5 border-bottom pb-3 ">
                                        <div>
                                            <h5 class="fw-bold"><i class="fa-solid fa-circle-check text-success fs-4"></i> Submit your test</h5>
                                            <div class="" style="font-size: 14px; opacity: 70%;">
                                                <span class="fw-bold">
                                                    Due
                                                </span>
                                                <span>
                                                    Jul 4, 1:59 PM +07
                                                </span>
                                            </div>
                                        </div>
                                        <a href="#" class="mr-5 fw-bold text-decoration-none">Redo Test</a>
                                    </div>
                                    <div class="d-flex justify-content-between mt-5">
                                        <div>
                                            <h5 class="fw-bold"><i class="fa-solid fa-circle-check text-success fs-4 "></i> Receive Grade</h5>
                                            <div class="" style="font-size: 14px; opacity: 70%;">
                                                <span class="fw-bold">
                                                    To Pass
                                                </span>
                                                <span>
                                                    80% or higher
                                                </span>
                                            </div>
                                        </div>

                                        <div class="d-flex justify-content-between mr-5 border-left pl-5">
                                            <div class="">
                                                <p class="fw-bold">Your Grade</p>
                                                <p class="text-success fs-3">${userquiz.score}%</p>
                                            </div>
                                            <div class="ml-5">
                                                <a href="#" class="fw-bold text-decoration-none btn btn-primary rounded-left rounded-right p-12">Redo Test</a>
                                            </div>
                                        </div>

                                    </div>
                                </c:if>
                                <c:if test="${userquiz.status != 1}">
                                    <div class="m-5">
                                        <span class="fw-bold">
                                            To Pass
                                        </span>
                                        <span>
                                            Earn at least 80%
                                        </span>
                                        <br>
                                        <span class="fw-bold">
                                            Retakes
                                        </span>
                                        <span>
                                            3 Attempts every 8 hours
                                        </span>

                                    </div>
                                    <div class="">
                                        <a href="takequiz?quizId=1" class="fw-bold text-decoration-none btn btn-primary rounded-left rounded-right p-12">Start Quiz Test</a>
                                    </div>
                                </c:if>
                            </div>
                        </c:if>
                        <div class="d-flex my-5">
                            <c:forEach items="${listlearn}" var="learn">
                                <c:if test="${learn.lesson.id == lesson.id && learn.status !=  1 && lesson.type.id != 3}">
                                    <a href="lessonstatus?cid=${listtopic.get(0).course.id}&lid=${lesson.id}" class="btn btn-primary rounded-left rounded-right mr-2">Mark as complete</a>
                                    <a href="ChooseLessonViewNext?cid=${listtopic.get(0).course.id}&lid=${lesson.id}" class="btn btn-primary rounded-right rounded-left">Go to next lesson</a>
                                </c:if>
                                <c:if test="${learn.lesson.id == lesson.id && learn.status ==  1 && lesson.type.id != 3}">
                                    <h4 class="text-success pt-2 mx-3"><i class="fa-solid fa-check"></i>Completed</h4>
                                    <a href="ChooseLessonViewNext?cid=${listtopic.get(0).course.id}&lid=${lesson.id}" class="btn btn-primary rounded-right rounded-left">Go to next lesson</a>
                                </c:if>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--feedback-->
        <div class="modal fade" id="feedbackModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Give Feedback</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="feedback" method="POST">
                            <input hidden="" name="cid" value="${cid}"/>
                            <span id="errorlogin"></span>
                            <div class="mb-3">
                                <i class="fas fa-envelope prefix grey-text"></i>
                                <label class="form-label">Content</label>
                                <textarea class="form-control" name="content" ></textarea>

                                <div class="rate bg-success py-3 text-white mt-3">

                                    <h6 class="mb-0">Rate your driver</h6>

                                    <div class="rating"> <input type="radio" name="rating" value="5" id="5"><label for="5">☆</label> <input type="radio" name="rating" value="4" id="4"><label for="4">☆</label> <input type="radio" name="rating" value="3" id="3"><label for="3">☆</label> <input type="radio" name="rating" value="2" id="2"><label for="2">☆</label> <input type="radio" name="rating" value="1" id="1"><label for="1">☆</label>
                                    </div>


                                    <div class="buttons px-4 mt-0">

                                        <button class="btn btn-warning btn-block rating-submit">Submit</button>

                                    </div>
                                </div>
                                <div class="modal-footer d-block">

                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        function ChooseLesson(param, param1) {
            var lid = param;
            var cid = param1;
            $.ajax({
                type: 'POST',
                data: {lesid: lid, cesid: cid},
                url: "/Online-Learning-SWP/choselesson",
                success: function (data) {
                    var row = document.getElementById("content");
                    row.innerHTML = data;
                }
            });
        }
    </script>




    <!-- JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    <script src="js/lessonview.js"></script>
</body>

</html>


