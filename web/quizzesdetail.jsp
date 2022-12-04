<%@page import="model.QLevel"%>
<%@page import="java.util.List"%>
<%@page import="model.Quizzes"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>eLEARNING - QuizzesDetail</title>
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
        <script src="ckeditor/ckeditor.js"></script>


        <link href="css/sb-admin-2.min.css" rel="stylesheet">
        <link href="css/cusdes.css" rel="stylesheet">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/choices.min.css">
        <script src="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/choices.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.5.1/chosen.jquery.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.5.1/chosen.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.5.1/chosen.min.css">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.5.1/chosen.jquery.min.js"></script>


    </head>

    <body>

        <div id="wrapper">

            <!-- Sidebar -->
            <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

                <!-- Sidebar - Brand -->
                <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                    <div class="sidebar-brand-icon rotate-n-15">
                        <i class="fas fa-laugh-wink"></i>
                    </div>
                    <div class="sidebar-brand-text mx-3">Hello, ${sessionScope.account.username}</div>
                </a>

                <!-- Divider -->
                <hr class="sidebar-divider my-0">

                <!-- Nav Item - Dashboard -->
                <li class="nav-item active">
                    <a class="nav-link" href="dashboard">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Dashboard</span></a>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider">

                <!-- Heading -->
                <div class="sidebar-heading">
                    Page
                </div>
                <!-- Nav Item - Pages Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                       aria-expanded="true" aria-controls="collapseTwo">
                        <i class="fas fa-fw fa-cog"></i>
                        <span>Course</span>
                    </a>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Custom Course:</h6>
                            <a class="collapse-item" href="buttons.html">View</a>
                            <a class="collapse-item" href="cards.html">Manage</a>
                        </div>
                    </div>
                </li>

                <!-- Nav Item - Utilities Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                       aria-expanded="true" aria-controls="collapseUtilities">
                        <i class="fas fa-fw fa-wrench"></i>
                        <span>Blog</span>
                    </a>
                    <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                         data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Custom Blog:</h6>
                            <a class="collapse-item" href="utilities-color.html">View</a>
                            <a class="collapse-item" href="utilities-border.html">Manage</a>
                        </div>
                    </div>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider">

                <!-- Heading -->
                <div class="sidebar-heading">
                    Addons
                </div>

                <!-- Nav Item - Pages Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#lesson"
                       aria-expanded="true" aria-controls="lesson">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>Lesson</span>
                    </a>
                    <div id="lesson" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Lesson Custom:</h6>
                            <a class="collapse-item" href="login.html">View</a>
                            <a class="collapse-item" href="register.html">Manage</a>
                            <div class="collapse-divider"></div>
                        </div>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                       aria-expanded="true" aria-controls="collapsePages">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>User</span>
                    </a>
                    <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">User Custom:</h6>
                            <a class="collapse-item" href="login.html">View</a>
                            <a class="collapse-item" href="register.html">Manage</a>
                            <div class="collapse-divider"></div>
                        </div>
                    </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#qsbank"
                       aria-expanded="true" aria-controls="qsbank">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>Question</span>
                    </a>
                    <div id="qsbank" class="collapse" aria-labelledby="headingUtilities"
                         data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Question</h6>
                            <a class="collapse-item" href="qsbank">Manage</a>
                        </div>
                    </div>
                </li>

                <!-- Nav Item - Charts -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#quizzes"
                       aria-expanded="true" aria-controls="quizzes">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>Quizzes</span>
                    </a>
                    <div id="quizzes" class="collapse" aria-labelledby="headingUtilities"
                         data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Quizzes</h6>
                            <a class="collapse-item" href="quizzes">View</a>
                            <a class="collapse-item" href="#">Quizz Detail</a>
                        </div>
                    </div>
                </li>


                <!-- Divider -->
                <hr class="sidebar-divider d-none d-md-block">

                <!-- Sidebar Toggler (Sidebar) -->
                <div class="text-center d-none d-md-inline">
                    <button class="rounded-circle border-0" id="sidebarToggle"></button>
                </div>

            </ul>
            <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - User Information -->
                        <li class="dropdown no-arrow" style="display: flex;">

                            <c:if test="${sessionScope.account!=null}">
                                <div><a class="nav-item nav-link"  style="color: #06BBCC;" > <i class="fa-solid fa-user"></i> ${sessionScope.account.username}</a></div> 
                                <div><a href="logout" class="nav-item nav-link" style="font-weight:bold;  padding: 0.54rem; color: #FFFFFF; background-color: #06BBCC;">LOGOUT</a></div>
                            </c:if>
                        </li>

                    </ul>

                </nav>
                <div class="container-fluid ml-5">
                    <h4>Quizzes Details</h4>

                    <ul class="nav nav-pills mt-5" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="overview-tab" data-bs-toggle="tab" data-bs-target="#overview"
                                    type="button" role="tab" aria-controls="overview" aria-selected="true">Overview</button>
                        </li>
                    </ul>

                    <!-- Tab panes -->
                    <form action="QuizzesDetail?id=${quizzes.id}" method="POST">
                    <div class="tab-content">
                        <div class="tab-pane active" id="overview" role="tabpanel" aria-labelledby="overview-tab">
                                <div class="mt-4 row">
                                    <div class="col-9">
                                        <div class="mb-3">
                                            <div class=" position-relative">
                                                <label for="quizzesname" class="form-label">Name</label>
                                                <input type="text" class="form-control" id="quizzesname" name="quizzesname" value="${quizzes.name}" required>
                                                <div class="invalid-feedback">Please select a quiz</div>
                                            </div>

                                        </div>
                                        <div class="mb-3">
                                            <c:set var="listCourses" value="${requestScope.listSubCategoryCourse}"  />
                                            <label class="form-check-label" for="subject">Subject</label>
                                            <select name="subjectselect" id="subject" class="form-select chosen" required aria-label="select">
                                                <c:forEach begin="0" end="${listCourses.size()-1}" var="i">
                                            <option value="${listCourses.get(i).id}">${listCourses.get(i).name}</option>
                                        </c:forEach>
                                            </select>
                                            <div class="invalid-feedback">Please select a subject</div>
                                        </div>
                                            <%Quizzes quizzes = (Quizzes) request.getAttribute("quizzes") ;
                                                int quizlevelID = quizzes.getQLevel().getId();
                                                List<QLevel> list = (List<QLevel>) request.getAttribute("listLevel");
                                            %>
                                            
                                        <div class="row">
                                            <div class="col-6 mb-3">
                                                <label class="form-check-label" for="level">Exam Level</label>
                                                <select name="levelselect" id="level" class="form-select" required aria-label="select">
                                                    <%for (QLevel qlevel : list) {%>
                                                    <option value="<%=qlevel.getId()%>" <%=qlevel.getId()==quizlevelID?"selected":""%> ><%=qlevel.getName()%></option>
                                                        <%}%>
                                                </select>
                                                <div class="invalid-feedback">Please select a level</div>
                                            </div>
                                            <div class="col-6 mb-3">
                                                <label class="form-check-label" for="duration">Duration (minutes)</label><br>
                                               <input type="text" class="form-control" id="duration" name="duration" value="${quizzes.duration}" required>
                                                <div class="invalid-feedback">Please input a duration</div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-6 mb-3">
                                                <label class="form-check-label" for="passrate">Pass Rate (%)</label><br>
                                                <input type="text" class="form-control" id="passrate" name="passrate" value="${quizzes.passrate}" required>
                                                <div class="invalid-feedback">Please input a passrate</div>
                                            </div>
                                            <div class="col-6 mb-3">
                                                <label class="form-check-label" for="status">Status</label>
                                                <select name="statusselect" id="status" class="form-select" required aria-label="select">
                                                    <option value="1" ${quizzes.status==1?"selected":""} >Public</option>
                                                    <option value="0" ${quizzes.status==0?"selected":""}>Hidden</option>
                                                </select>
                                                <div class="invalid-feedback">Please input a status</div>
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-check-label">Description</label>
                                            <textarea rows="10" cols="70" id="describe" name="describe" class="form-control"
                                                      required>${quizzes.description}</textarea>
                                        </div>

                                        <div class="mb-3">
                                            <button class="btn btn-primary" type="submit">Save</button>
                                        </div>

                                    </div>
                                </div>
                        </div>
                    </div>
                    </form>

            </div> <script type="text/javascript">
                                        $(".chosen").chosen();
                                    </script>
        </div>
        <!-- End of Main Content -->

        <!-- Footer -->
        <footer class="sticky-footer bg-white">
        </footer>
        <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

</div>

<script>
    CKEDITOR.replace('brief');
    CKEDITOR.replace('describe');</script>
<script>
    <script>
        $(document).ready(func ti o
        n(){

            var someTabTriggerEl = document.querySelector('#setting-tab')
            var tab = new bootstrap.Tab(someTabTriggerEl)

            tab.show()
    
    });   </script>
</script>
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script>
        $(document).ready(function () {

    var multipleCancelButton = new Choices('#choices-multiple-remove-button', {
    removeItemButton: true,
   
    });
        });
</script>
</body>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="lib/wow/wow.min.js"></script>
<script src="lib/easing/easing.min.js"></script>
<script src="lib/waypoints/waypoints.min.js"></script>
<script src="lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Template Javascript -->
<script src="js/main.js"></script>
        <script src="https://code.jquery.com/jquery-3.1.1.min.js">
        integrity = "sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin = "anonymous" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>



</html>
