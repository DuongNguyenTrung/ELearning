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
                                <img class="img-profile rounded-circle" src="img/Icon_user.png">
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
                    <h4>Subject Dimension</h4>



                    <!-- Tab panes -->
                    <div class="">

                        <div class="tab-pane" id="dimension" role="tabpanel" aria-labelledby="dimension-tab">


                            <div class="mb-3 mt-3 float-right">
                                <button class="btn btn-primary " data-bs-toggle="modal" data-bs-target="#newdimension" type="submit">Add new</button>
                            </div>

                       


                            <div class="modal fade" id="newdimension" tabindex="-1" role="dialog" aria-labelledby="newdimension" aria-hidden="true">
                                 <div class="modal-dialog modal-lg" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Add new dimension</h5>
                                                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                             <form class="was-validated" method="post" action="subjectdimension?action=addnew">
                                            <div class="modal-body my-5">
                                               
                                                                        <div class="row">
                                                                        <div class="col-6">
                                                                        <div class="mb-3">
                                                                            <label for="type" class="form-label" >Type</label>
                                                                            <input type="text" id="newtype" name="type" class="form-control" required value="${a.type}">
                                                                            <div class="invalid-feedback">Input dimension type</div>
                                                                        </div>
                                                                            <div class="mb-3">
                                                                            <label for="name" class="form-label" >Name</label>
                                                                            <input type="text" id="newname" name="name" class="form-control" value="${a.name}" required>
                                                                            <div class="invalid-feedback">Input dimension name</div>
                                                                        </div>
                                                                        </div>
                                                                            
                                                                            <div class="col-6">
                                                                         <div class="mb-3">
                                                                        <label for="desribe" class="form-check-label">Description</label>
                                                                        <textarea rows="5" cols="10" style="resize:none;" name="description"   class="form-control"
                                                                                              ></textarea>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                 
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                <button type="submit"  class="btn btn-primary">Add</button>
                                            </div>
                                                   </form>                            
                                        </div>
                                                                            
                               

                            </div>


                        </div>
                        <div class="mt-5 mb-3 float-left">
                            <input id="searchdimensionbox" style="height: 38px; width:300px;"  type="text" placeholder="  Search in dimensions" oninput="Dimension(1,${total})"  value=""> 
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
                                        <c:forEach items="${dimensions}" var="a">
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
                                                    <span alt="view"  class="mr-2"><a href="#" data-bs-toggle="modal" data-bs-target="#viewdimension${a.id}" >  <i class="fa-solid fa-eye"></i> View </a></span>
                                                    <span alt="edit"  class="mr-2"><a href="#" data-bs-toggle="modal" data-bs-target="#edit${a.id}" >  <i class="fa-solid fa-pen-to-square"></i> Edit </a></span>
                                                    <span alt="delete"  class="mr-2"><a href="#" data-bs-toggle="modal" data-bs-target="#deletedimension${a.id}" >  <i class="fa-solid fa-trash-can"></i> Delete</a></span>
                                                    <div class="modal fade" id="viewdimension${a.id}" tabindex="-1" role="dialog" aria-labelledby="#viewdimension${a.id}" aria-hidden="true">
                                                        <div class="modal-dialog modal-dialog-centered" role="document">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title" id="exampleModalLongTitle">View Dimension ID = ${a.id}</h5>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <form class="was-validated">
                       
                                                                        <div class="mb-3">
                                                                            <label for="type" class="form-label" >Type</label>
                                                                            <input type="text"  name="type" class="form-control"  disabled value="${a.type}">
                                                                            <div class="invalid-feedback">Input dimension type</div>
                                                                        </div>

                                                                                                    <div class="mb-3">
                                                                            <label for="name" class="form-label" >Name</label>
                                                                            <input type="text"  name="name" class="form-control" disabled value="${a.name}">
                                                                            <div class="invalid-feedback">Input dimension name</div>
                                                                        </div>
                                                                    <div class="mb-3">
                                                                        <label for="desribe" class="form-check-label">Description</label>
                                                                        <textarea rows="5" cols="70"  style="resize: none;" disabled class="form-control"
                                                                                              required>${a.description}</textarea>
                                                                                </div>

                                                                    </form>

                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="modal fade" id="edit${a.id}" tabindex="-1" role="dialog" aria-labelledby="#deletedimension${a.id}" aria-hidden="true">
                                                        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                                            <div class="modal-content">
                                                                    <div class="modal-header">
                                                                    <h5 class="modal-title" >Edit Dimension ID = ${a.id}</h5>
                                                                </div>
                                                                  
                                                                <div class="modal-body">
                                                                    <form class="was-validated" method="post" action="subjectdimension?action=edit&id=${a.id}">
                                                                        <div class="row">
                                                                        <div class="col-6">
                                                                        <div class="mb-3">
                                                                            <label for="type" class="form-label" >Type</label>
                                                                            <input type="text" id="type" name="type" class="form-control" required value="${a.type}">
                                                                            <div class="invalid-feedback">Input dimension type</div>
                                                                        </div>
                                                                            <div class="mb-3">
                                                                            <label for="name" class="form-label" >Name</label>
                                                                            <input type="text" id="name" name="name" class="form-control" value="${a.name}" required>
                                                                            <div class="invalid-feedback">Input dimension name</div>
                                                                        </div>
                                                                        </div>
                                                                            
                                                                            <div class="col-6">
                                                                         <div class="mb-3">
                                                                        <label for="desribe" class="form-check-label">Description</label>
                                                                        <textarea rows="5" cols="10" style="resize:none;" id="description" name="description"  class="form-control"
                                                                                              >${a.description}</textarea>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                   
                                                                <div class="modal-footer">
                                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                                                    <button class="btn btn-primary"  type="submit" >Save </button>
                                                                </div>
                                                                                 </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    </div>
                                                    <div class="modal fade" id="deletedimension${a.id}" tabindex="-1" role="dialog" aria-labelledby="#deletedimension${a.id}" aria-hidden="true">
                                                        <div class="modal-dialog modal-dialog-centered" role="document">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title" id="exampleModalLongTitle">Delete Dimension</h5>
                                                                </div>
                                                                <div class="modal-body">
                                                                         Do you want to delete this dimension? ID = ${a.id} 
                                                                </div>
                                                                <div class="modal-footer">
                                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                                                    <a class="btn btn-primary"  href="subjectdimension?action=deletedimension&id=${a.id}">Delete</a>
                                                                </div>
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
                                        <li class="page-item ${p==1?"active":""}"><a class="page-link" href="#" onclick="Dimension(${p},${total})">${p}</a></li>

                                    </c:forEach>

                                    <li class="page-item ${total==1?"disabled":""}"> 

                                        <a class="page-link " href="#" onclick="Dimension(${total},${total})">Last</a>
                                    </li>
                                </ul>
                            </nav>
                                    
                        </div>


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
  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   
        <script>
            function Dimension( page, total) {
                console.log("aaaaaaaa");
        var a = document.getElementById("searchdimensionbox").value;
        console.log(a +'hi');
        console.log(page+total);
        $.ajax({
        type: 'POST',
                data: {page: page, total: total, search: a},
                    url: "/Online-Learning-SWP/dimension",
                    success: function (data) {
                        var row = document.getElementById("dimension-body");
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
                    <script src="https://code.jquery.com/jquery-3.1.1.min.js">                        integrity = "sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin = "anonymous" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>



</html>

