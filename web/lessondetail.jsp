<%-- 
    Document   : subjectdetails
    Created on : Jun 27, 2022, 8:07:57 AM
    Author     : ADMIN
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
        <script src="ckeditor/ckeditor.js"></script>


        <link href="css/sb-admin-2.min.css" rel="stylesheet">
        <link href="css/cusdes.css" rel="stylesheet">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/choices.min.css">
        <script src="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/choices.min.js"></script>



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
                    <div class="sidebar-brand-text mx-3">SB Admin <sup>2</sup></div>
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
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true"
                       aria-controls="collapseTwo">
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
                    <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
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
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true"
                       aria-controls="collapsePages">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>Lesson</span>
                    </a>
                    <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Lesson Custom:</h6>
                            <a class="collapse-item" href="login.html">View</a>
                            <a class="collapse-item" href="register.html">Manage</a>
                            <div class="collapse-divider"></div>
                        </div>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true"
                       aria-controls="collapsePages">
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

                <!-- Nav Item - Charts -->
                <li class="nav-item">
                    <a class="nav-link" href="charts.html">
                        <i class="fas fa-fw fa-chart-area"></i>
                        <span>Charts</span></a>
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
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas McGee</span>
                                <img class="img-profile rounded-circle" src="img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Settings
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Activity Log
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>

                <div class="container-fluid">
                    <h4>Lesson Details</h4>

                    <ul class="nav nav-pills mt-5" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="edit-tab" data-bs-toggle="tab" data-bs-target="#edit"
                                    type="button" role="tab" aria-controls="edit" aria-selected="true">Edit</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="input-tab" data-bs-toggle="tab" data-bs-target="#input" type="button"
                                    role="tab" aria-controls="input" aria-selected="false">Add New Lesson</button>
                        </li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div class="tab-pane active" id="edit" role="tabpanel" aria-labelledby="edit-tab">
                            <form  method="post" action="editlesson?action=updatelesson&lid=${lesson.id}&cid=${cid}">
                                <div class="mt-4 row">
                                    <div class="col-7">
                                        <div class="mb-3">
                                            <div class=" position-relative">
                                                <label for="lessonname" class="form-label">Lesson name</label>
                                                <input type="text" class="form-control" id="lessonname" name="lessonname" value="${lesson.name}" required>

                                                <div class="invalid-feedback">Please input a lesson name</div>
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-check-label" for="topic">Topic</label>
                                            <select name="topic" id="topic" class="form-select" required aria-label="select">
                                                <c:forEach var="t" items="${listtopic}">
                                                    <option value="${t.id}"  ${lesson.topic.id==t.id ?"selected":""}>${t.topic_name}</option>
                                                </c:forEach>
                                            </select>
                                            <div class="invalid-feedback">Please select a topic</div>
                                        </div>

                                        <div class="mb-3">
                                            <div class=" position-relative">
                                                <label for="youtubelink" class="form-label">You Tube Link</label>
                                                <input type="text" class="form-control" id="youtubelink" name="youtubelink" value="${lesson.video_link}" required>

                                                <div class="invalid-feedback">Please input You Tube Link</div>
                                            </div>
                                        </div>

                                        <div class="d-flex justify-content-between">
                                            
                                                <div>

                                                    <label class="form-check-label" for="status">Status</label>
                                                    <div class="d-flex mt-2 ml-2">

                                                        <div class="form-check">
                                                            <input type="radio" class="form-check-input" id="yes" name="status"
                                                                   required ${lesson.status != 0 ?"checked":""} value="1">
                                                            <label class="form-check-label" for="yes" >Active</label>

                                                        </div>

                                                        <div class="form-check mb-3 mx-4 px-2">
                                                            <input type="radio" class="form-check-input" id="no" name="status"
                                                                   required ${lesson.status == 0 ?"checked":""} value="0">
                                                            <label class="form-check-label" for="no">Inactive</label>

                                                        </div>

                                                    </div>
                                                </div>

                                        </div>


                                        <div class="mb-3">
                                            <label class="form-check-label">Lesson content</label>
                                            <textarea rows="10" cols="70" id="describe" name="describe" class="form-control"
                                                      required>${lesson.content}</textarea>
                                        </div>

                                        <div class="mb-3">
                                            <button class="btn btn-primary" type="submit">Save</button>
                                        </div>

                                    </div>
                                    <div class="col-5">


                                        <div class="mb-3 col-4">
                                            <div class=" position-relative">
                                                <label for="type" class="form-label">Type</label>
                                                <select name="type" id="topic" class="form-select" required aria-label="select">
                                                    <c:forEach var="t" items="${listtype}">
                                                        <option value="${t.id}"  ${lesson.type.id==t.id ?"selected":""}>${t.type_name}</option>
                                                    </c:forEach>
                                                </select>

                                                <div class="invalid-feedback">Please select a type lesson</div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </form>

                        </div>
                        <div class="tab-pane" id="input" role="tabpanel" aria-labelledby="input-tab">
                            <form method="post" action="editlesson?action=addnewlesson&lid=${lesson.id}&cid=${cid}">
                                <div class="mt-4 row">
                                    <div class="col-7">
                                        <div class="mb-3">
                                            <div class=" position-relative">
                                                <label for="lessonname" class="form-label">Lesson name</label>
                                                <input type="text" class="form-control" id="lessonname" name="lessonname" required>

                                                <div class="invalid-feedback">Please select a lesson name</div>
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-check-label" for="topicselect">Topic</label>
                                            <select name="topicselect" id="topicselect" class="form-select" required aria-label="select">
                                                <c:forEach var="t" items="${listtopic}">
                                                    <option value="${t.id}">${t.topic_name}</option>
                                                </c:forEach>
                                            </select>
                                            <div class="invalid-feedback">Please select a topic</div>
                                        </div>

                                        <div class="mb-3">
                                            <div class=" position-relative">
                                                <label for="youtubelink" class="form-label">You tube link</label>
                                                <input type="text" class="form-control" id="youtubelink" name="youtubelink" required>

                                                <div class="invalid-feedback">Please input You Tube link</div>
                                            </div>
                                        </div>

                                        <div class="d-flex justify-content-between">
                                            
                                                <div>

                                                    <label class="form-check-label" for="statusselect">Status</label>
                                                    <div class="d-flex mt-2 ml-2">

                                                        <div class="form-check">
                                                            <input type="radio" class="form-check-input" id="yes" name="statusselect"
                                                                   required value="1">
                                                            <label class="form-check-label" for="yes" >Active</label>

                                                        </div>

                                                        <div class="form-check mb-3 mx-4 px-2">
                                                            <input type="radio" class="form-check-input" id="no" name="statusselect"
                                                                   required value="0">
                                                            <label class="form-check-label" for="no">Inactive</label>

                                                        </div>

                                                    </div>
                                                </div>

                                            
                                        </div>


                                        <div class="mb-3">
                                            <label class="form-check-label">Lesson content</label>
                                            <textarea rows="10" cols="70" id="brief" name="brief" class="form-control"
                                                      required></textarea>
                                        </div>

                                        <div class="mb-3">
                                            <button class="btn btn-primary" type="submit">Save</button>
                                        </div>

                                    </div>
                                    <div class="col-5">


                                        <div class="mb-3 col-4">
                                            <div class=" position-relative">
                                                <label for="typeselect" class="form-label">Type</label>
                                                <select name="typeselect" id="typeselect" class="form-select" required aria-label="select">
                                                    <c:forEach var="t" items="${listtype}">
                                                        <option value="${t.id}">${t.type_name}</option>
                                                    </c:forEach>
                                                </select>

                                                <div class="invalid-feedback">Please select a type lesson</div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </form>

                        </div>





                    </div>
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
            $(document).ready(function(){

                    var someTabTriggerEl = document.querySelector('#input-tab')
                    var tab = new bootstrap.Tab(someTabTriggerEl)

                    tab.show()
       });</script>

        
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script>
        $(document).ready(function () {

            var multipleCancelButton = new Choices('#choices-multiple-remove-button', {
            removeItemButton: true,
        });
        });</script>
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
