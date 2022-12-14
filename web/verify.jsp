
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
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
        <title>Verify Page</title>
    </head>
    <body style="background-color: #f5f5f5;">
        <jsp:include page="header.jsp"></jsp:include>
            <div class="text-center p-5" style="height: 400px">


                <p class="lead"><a href="home" class="btn btn-lg btn-primary">Back to Home Page</a></p>
            </div>
        <c:if test="${checkverify == '1'}">
            <h1 class="text-success">Thank You For Registration!</h1>
            <p class="lead text-success">Your account has been verify successfully.</p>
        </c:if>
        <c:if test="${checkverify == '0'}">
            <h1>Thank You For Registration!</h1>
            <p class="lead">Please Check your Email for Account Verification Link.</p>
        </c:if>

        <!-- FOOTER -->
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
