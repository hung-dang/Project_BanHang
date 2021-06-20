<%-- 
    Document   : Detail.jsp
    Created on : Jun 5, 2021, 4:50:44 AM
    Author     : ADMIN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <link href="css/main.css" rel="stylesheet" type="text/css">
    <link href="css/detail.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
    <title>Detail</title>
</head>

<body>
    <jsp:include page="top-menu.jsp"></jsp:include>

    <div class="container">
        <div class="card">
            <div class="container-fliud">
                <div class="wrapper row">
                    <div class="preview col-md-6">

                        <div class="preview-pic tab-content">
                            <div class="tab-pane active" id="pic-1"><img src="${listD.image}" width="300px" height="300px"/></div>
                        </div>
                    </div>
                    <div class="details col-md-6">
                        <h3 class="product-title">${listD.name}</h3>
                        <p class="product-description"> ${listD.description}</p>
                        <h4 class="price">current price: <span>${listD.price}$</span></h4>
                        <div class="action">
                            <button class="add-to-cart btn btn-default" type="button">add to cart</button>
                            <button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp"></jsp:include>
    <script src="bootstrap/js/bootstrap.min.js "></script>
</body>

</html>
