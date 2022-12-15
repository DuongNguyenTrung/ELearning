
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin Dashboard</title>
        <!--<meta charset="UTF-8">-->
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

        <meta charset="utf-8">
        <title>eLEARNING - eLearning HTML Template</title>
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
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.1/css/dataTables.bootstrap5.min.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/sb-admin-2.min.css" rel="stylesheet">
        <link href="css/cusdes.css" rel="stylesheet">
        <link href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
              rel="Stylesheet"type="text/css">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" rel="stylesheet">
        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

        <link href="css/sb-admin-2.min.css" rel="stylesheet">
        <link href="css/cusdes.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.css">



    </head>
    <body>
        <div id="wrapper">

            <jsp:include page="sidebar.jsp"></jsp:include> 

                <!-- Content Wrapper -->
                <div id="content-wrapper" class="d-flex flex-column">
                    <table id="tb" class="table table-striped" style="width:100%">

                        <thead>
                            <tr>
                                <th scope="col">User ID</th>
                                <th scope="col">Full name</th>
                                <th scope="col">Course Name</th>
                                <th scope="col">Category</th>
                                <th scope="col">Price</th>
                                <th scope="col">Registered Date</th>
                                <th scope="col">Status</th>
                                <th scope="col">Action</th>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${ls}" var="s">
                            <tr>
                                <td >${s.userId}</td>
                                <td>${s.fullname}</td>
                                <td>${s.name}</td>
                                <td>${s.title}</td>
                                <td>${s.salePrice}</td>
                                <td>${s.registedDate}</td>
                                <td>${s.status eq true? "active":"inactive"}</td>
                                <td>
                                    <c:if test="${s.status eq false}">
                                        <form action="order" method="post">
                                            <input name="uid" hidden="" value="${s.userId}"/>
                                            <input name="cid" hidden="" value="${s.courseId}"/>
                                            <button type="submit" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#updateModal">
                                                Verify
                                            </button>
                                        </form>
                                    </c:if>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <!-- End of Content Wrapper -->



            <script>
                $(document).ready(function () {
                    $('#tb').DataTable({
                        orderCellsTop: true,
                        initComplete: function () {
                            this.api()
                                    .columns([3, 4, 6])
                                    .every(function () {
                                        var column = this;
                                        var select = $('<select><option value="">select</option></select>')
                                                .appendTo($("thead tr:eq(1) td").eq(this.index()))
                                                .on('change', function () {
                                                    var val = $.fn.dataTable.util.escapeRegex($(this).val());

                                                    column.search(val ? '^' + val + '$' : '', true, false).draw();
                                                });

                                        column
                                                .data()
                                                .unique()
                                                .sort()
                                                .each(function (d, j) {
                                                    select.append('<option value="' + d + '">' + d + '</option>');
                                                });
                                    });
                        }
                    });

                });
            </script>

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous">

            </script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>

            <!-- Bootstrap core JavaScript-->
            <script src="vendor/jquery/jquery.min.js"></script>
            <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

            <!-- Core plugin JavaScript-->
            <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

            <!-- Custom scripts for all pages-->
            <script src="js/sb-admin-2.min.js"></script>


            <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"
            type="text/javascript"></script>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
            <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.js"></script>

    </body>
</html>
