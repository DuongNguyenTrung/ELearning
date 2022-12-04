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
                    <h4>Subject Details</h4>
                    <a class="btn btn-primary float-right" href="subjectdetails?id=${course.id}"><i class="fa-solid fa-pen-to-square"></i> Edit Subject</a>

                    <ul class="nav nav-pills mt-5" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="overview-tab" data-bs-toggle="tab" data-bs-target="#overview"
                                    type="button" role="tab" aria-controls="overview" aria-selected="true">Overview</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="dimension-tab" data-bs-toggle="tab" data-bs-target="#dimension" type="button"
                                    role="tab" aria-controls="dimension" aria-selected="false">Dimension</button>
                        </li>
                           <c:if test="${sessionScope.account.role.name eq 'Admin'}">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="pricepkg-tab" data-bs-toggle="tab" data-bs-target="#pricepkg" type="button"
                                    role="tab" aria-controls="pricepkg" aria-selected="false">Price Package</button>
                        </li>
                       </c:if>
        
                    </ul>
                    
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div class="tab-pane active" id="overview" role="tabpanel" aria-labelledby="overview-tab">
                            <form enctype="multipart/form-data" class="" method="post" action="subjectdetails?action=update&id=${course.id}">
                                <div class="mt-4 row">


                                    <div class="col-7">



                                        <div class="mb-3">
                                            <div class=" position-relative">
                                                <label for="subjectname" class="form-label">Course name</label>
                                                <input disabled type="text" class="form-control" id="subjectname" name="coursename" value="${course.name}" required>

                                                <div class="invalid-feedback">Please select a subject</div>
                                            </div>

                                        </div>
                                        <div class="mb-3">
                                            <label class="form-check-label" for="grade">Grade</label>
                                            <select disabled name="gradeselect" id="grade" class="form-select" required aria-label="select">
                                                <c:forEach var="a" items="${grade}">
                                                    <option value="${a.id}"  ${course.categorycourse.categorycourse.id==a.id ?"selected":""}>${a.name}</option>
                                                </c:forEach>


                                            </select>
                                            <div class="invalid-feedback">Please select a grade</div>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-check-label" for="subject">Subject</label>
                                            <select disabled name="subjectselect" id="subject" class="form-select" required aria-label="select">
                                                < <c:forEach var="a" items="${subject}">
                                                    <option value="${a.id}"  ${course.categorycourse.subcategorycourse.id==a.id ?"selected":""} >${a.name}</option>
                                                </c:forEach>


                                            </select>
                                            <div class="invalid-feedback">Please select a subject</div>
                                        </div>
                                        <div class="mb-3">
                                            <div class=" position-relative">
                                                <label for="subjectname" class="form-label">Title</label>
                                                <input disabled type="text" class="form-control" id="title" name="title" value="${course.title}" required>

                                                <div class="invalid-feedback">Please input title</div>
                                            </div>

                                        </div>
                                        <div class="mb-3">
                                            <div class=" position-relative">
                                                <label for="subjectname" class="form-label">Tagline</label>
                                                <input disabled type="text" class="form-control" id="tagline" name="tagline" value="${course.tagline}" required>

                                                <div class="invalid-feedback">Please input tagline</div>
                                            </div>

                                        </div>

                                        <div class="d-flex justify-content-between">

                                            <div>

                                                <label class="form-check-label" for="featured">Featured subject</label>
                                                <div class="d-flex mt-2 ml-2">

                                                    <div class="form-check">
                                                        <input disabled type="radio" class="form-check-input" id="yes" name="featuredsubject"
                                                               required ${course.featuredsubject==true ?"checked":""} value="true">
                                                        <label class="form-check-label" for="yes" >Yes</label>

                                                    </div>

                                                    <div class="form-check mb-3 mx-4 px-2">
                                                        <input disabled type="radio" class="form-check-input" id="no" name="featuredsubject"
                                                               required ${course.featuredsubject==false ?"checked":""} value="false">
                                                        <label class="form-check-label" for="no">No</label>

                                                    </div>

                                                </div>
                                            </div>
                                                               <c:if test="${sessionScope.account.role.name eq 'Admin'}">
                                            <div class="mb-3 col-6">
                                                <label class="form-check-label" for="status">Status</label>
                                                <select disabled name="statusselect" id="status" class="form-select" required aria-label="select">
                                                    < <c:forEach var="a" items="${status}">
                                                        <option  value="${a.id}"  ${course.coursestatus.id==a.id ?"selected":""}>${a.name}</option>
                                                    </c:forEach>


                                                </select>
                                                <div class="invalid-feedback">Please select a subject</div>
                                            </div>
                                              </c:if>
                                        </div>
                                          

                                        <div class="mb-3">
                                            <label class="form-check-label">Post content</label>
                                            <textarea rows="10" cols="70" id="describe" name="describe" class="form-control"
                                                      required>${course.description}</textarea>
                                        </div>

                                       

                                    </div>
                                    <div class="col-5">


                                        <input disabled type="file">
                                        <label class="pointer" for="thumbnail">
                                            Thumbnail
                                            <div class="thumbnail">
                                                <img class="thumbnail__image img-fluid img-thumbnail" src="${course.thumbnail}" />
                                                <div class="thumbnail__content">
                                                    <span class="thumbnail__icon"><i class="fas fa-camera"></i></span>
                                                    <span class="thumbnail__text">Preview Thumbnail</span>
                                                </div>

                                            </div>
                                        </label>
                                        <input disabled type="file" id="thumbnail" name="thumbnail" accept="image/png, image/jpeg" onchange="loadFile(event)">

                               
                                        <label style="display: none;" id="remove-pic" class="custom-file-upload btn btn-primary mt-2" onclick="deleteFile()">
                                            Remove 
                                        </label>
                                    </div>
                                </div>
                            </form>

                        </div>
                        <div class="tab-pane" id="dimension" role="tabpanel" aria-labelledby="dimension-tab">



                          
                        <div class="mt-5 mb-3 float-left">
                            <input id="searchdimensionbox" style="height: 38px; width:300px;"  type="text" placeholder="  Search in dimensions" oninput="Dimension(${param["id"]},1,${total})"  value=""> 
                            <button class="btn btn-primary"><i class="fa-brands fa-searchengin"></i></button>
                        </div>


                        <div id="dimension-body">


                            <div class="my-4" style="clear: both; border: solid black 1px;">
                                <div class="table-responsive ">
                                    <table class="table table-bordered table-hover  " style=" margin-bottom: 0px; font-size: 15px; " > 
                                        <tr class="table-primary">
                                            <th>
                                                ID 
                                            </th>
                                            <th >
                                                Type 
                                            </th>
                                            <th >
                                                Dimension
                                            </th>
                                            <th >
                                                Action
                                            </th>


                                        </tr>
                                        <c:forEach items="${course.dimension}" var="a">
                                            <tr>
                                                <td>
                                                    ${a.id}
                                                </td>
                                                <td>
                                                    ${a.type}
                                                </td>
                                                <td>
                                                    ${a.name}
                                                </td>
                                                <td >
                                                    <!--                                                    <span class="mr-2"> <a href="#"><i class="fa-solid fa-pen"></i></a> </span> -->
                                                    <span class="mr-2"><a href="#" data-bs-toggle="modal" data-bs-target="#deletedimension${a.id}" > <i class="fa-solid fa-trash-can"></i></a></span>
                                  <div class="modal fade" id="deletedimension${a.id}" tabindex="-1" role="dialog" aria-labelledby="#deletedimension${a.id}" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Delete Subject Dimension</h5>
      </div>
      <div class="modal-body">
        Do you sure you want to delete this dimension?
        ${a.type} - ${a.name}
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
        <a class="btn btn-primary"  href="subjectdetails?action=deletedimension&id=${course.id}&did=${a.id}">Save changes</a>
      </div>
    </div>
  </div>
                                                </td>
                                            </tr>
                                        </c:forEach>


                                    </table>
                                </div> 


                            </div>
                            <nav aria-label="Page navigation">
                                <ul class="pagination justify-content-end">
                                    <li class="page-item disabled">
                                        <a class="page-link" href="#" tabindex="-1">First</a>
                                    </li>

                                    <c:forEach begin="1" end="${total}" var="p">
                                        <li class="page-item ${p==1?"active":""}"><a class="page-link" href="#" onclick="Dimension(${param["id"]},${p},${total})">${p}</a></li>

                                    </c:forEach>

                                    <li class="page-item ${total==1?"disabled":""}"> 

                                        <a class="page-link " href="#" onclick="Dimension(${param["id"]},${total},${total})">Last</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>


                    </div>

 <c:if test="${sessionScope.account.role.name eq 'Admin'}">
                    <div class="tab-pane" id="pricepkg" role="tabpanel" aria-labelledby="pricepkg-tab">   


                        
                                 <!-- Modal -->


                            <div class="modal fade" id="newpricepackage" tabindex="-1" role="dialog" aria-labelledby="newpricepackage" aria-hidden="true">
                                <form method="post" action="subjectdetails?action=addnewpricepackage&id=${course.id}">  <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Add new Price Package</h5>
                                                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body my-5">
                                                Name - Sale Price - Status
                                                <select name="addmultipricepkg" id="choices-multiple-remove-button" placeholder="Select new price package" multiple>

                                                    <c:forEach items="${addnewpricepackage}" var="a">


                                                        <option value="${a.id}" title="lalala">${a.name} - ${a.saleprice} - ${a.status}</option>

                                                    </c:forEach>

                                                </select> 
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                <button type="submit"  class="btn btn-primary">Save changes</button>
                                            </div>
                                        </div>
                                </form>

                            </div>


                        </div>
                                        <div class="mt-5">
                            <input id="searchpricebox" style="height: 38px; width:300px;"  type="text" placeholder="  Search in Price Package" oninput="PricePackage(${param["id"]},1,${total})"  value=""> 
                            <button class="btn btn-primary"><i class="fa-brands fa-searchengin"></i></button>
                        </div>
                            
                        <div class="  col-4">
                            <div class="mt-5 col-10 mr-5">
                                <div class="price-input">
                                    <div class="field">
                                        <span>Price Min</span>
                                        <input type="number" class="input-min" value="0" >
                                    </div>
                                    <div class="separator">-</div>
                                    <div class="field">
                                        <span>Price Max</span>
                                        <input type="number" class="input-max" value="15000" >
                                    </div>
                                </div>
                                <div class="slider">
                                    <div class="progress"></div>
                                </div>
                                <div class="range-input">
                                    <input type="range" class="range-min" id="price-min" min="0" max="15000" value="0" step="500" onchange="PricePackage(${param["id"]}, 1,${total})">
                                    <input type="range" class="range-max" id="price-max" min="0" max="15000" value="15000" step="500" onchange="PricePackage(${param["id"]}, 1,${total})">
                                </div>
                            </div>
                        </div>

                        <div id="pricepackage-body">


                            <div class="my-4" style="clear: both; border: solid black 1px;">
                                <div class="table-responsive ">
                                    <table class="table table-bordered table-hover  " style=" margin-bottom: 0px; font-size: 15px; " > 
                                        <tr class="table-primary">
                                            <th>
                                                ID 
                                            </th>
                                            <th >
                                                Package 
                                            </th>
                                            <th >
                                                Duration
                                            </th>
                                            <th >
                                                List Price
                                            </th>
                                            <th >
                                                Sale Price
                                            </th>
                                            <th >
                                                Status
                                            </th>
                                            <th >
                                                Action
                                            </th>
                                        </tr>

                                        <c:forEach items="${course.pricepackages}" var="a">
                                            <tr>
                                                <td>
                                                    ${a.id}
                                                </td>
                                                <td>
                                                    ${a.name}
                                                </td>
                                                <td>
                                                    ${a.duration}
                                                </td>
                                                <td>
                                                    ${a.listprice}
                                                </td>
                                                <td>
                                                    ${a.saleprice}
                                                </td>
                                                <td>
                                                    ${a.status}
                                                </td>
                                                <td >
                                                    <!--<span class="mr-2"> <a href="#"><i class="fa-solid fa-pen"></i></a> </span>--> 
                                                    <span class="mr-2"><a  href="#" data-bs-toggle="modal" data-bs-target="#deleteprice${a.id}"> <i class="fa-solid fa-trash-can"></i></a></span>
                                                   
                                                </td>
                                            </tr>
       
                                        </c:forEach>

                                    </table>
                                </div> 


                            </div>
 

<!-- Modal -->

                            
                            <nav aria-label="Page navigation">
                                <ul class="pagination justify-content-end">
                                    <li class="page-item disabled">
                                        <a class="page-link" href="#" tabindex="-1">First</a>
                                    </li>
                                    <c:forEach begin="1" end="${pricetotal}" var="p">
                                        <li class="page-item ${p==1?"active":""}"><a class="page-link" href="#" onclick="PricePackage(${param["id"]},${p},${pricetotal})">${p}</a></li>
                                        </c:forEach>

                                    <li class="page-item ${pricetotal==1?"disabled":""}"> 
                                        <a class="page-link" href="#" onclick="PricePackage(${param["id"]},${pricetotal},${pricetotal})">Last</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
 </c:if>
            


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
    <script>
        $(document).ready(function(){

            var someTabTriggerEl = document.querySelector('#dimension-tab')
            var tab = new bootstrap.Tab(someTabTriggerEl)

            tab.show()
            });         
</script>
</script>
            <script>             var loadFile = function (event) {
            var output = document.getElementById('output');
    var removepic = document.getElementById('remove-pic');
    output.src = URL.createObjectURL(event.target.files[0]);
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
    var thumbnail = document.getElementById('thumbnail');
    thumbnail.value = "";
    output.src = "";
    removepic.style.display = "none";
    }        ;
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script>
        $(document).ready(function () {

    var multipleCancelButton = new Choices('#choices-multiple-remove-button', {
    removeItemButton: true,
            });
      });
</script>
        <script>
        function Dimension(id, page, total) {
            console.log("aaaaaaaa");
    var a = document.getElementById("searchdimensionbox").value;
    console.log(a);
    $.ajax({
    type: 'POST',
                    data: {page: page, id: id, total: total, search: a},
        url: "/Online-Learning-SWP/dimensionpaging",
                    success: function (data) {
                    var row = document.getElementById("dimension-body");
            row.innerHTML = data;
            }
            });
            }
            function PricePackage(id, page, total) {
                    console.log("aaaaaaaa");
            var min = document.getElementById("price-min").value;
            var max = document.getElementById("price-max").value;
            console.log(min);
            console.log(max);
            var a = document.getElementById("searchpricebox").value;
            $.ajax({
            type: 'POST',
                    data: {page: page, id: id, total: total, search: a, min:min, max:max},
                    url: "/Online-Learning-SWP/pricepackagepaging",
                    success: function (data) {
                            var row = document.getElementById("pricepackage-body");
                    row.innerHTML = data;
            }
            });
            }
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
