
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Home</title>

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
        <link href="css/main.css" rel="stylesheet" type="text/css">
    </head>

    <body>
        <jsp:include page="top-menu.jsp"></jsp:include>
            <div class="container banner">
                <img src="image/banner.jpg" width="1120px" ; height="800px" style="text-align: center;">
                <div class="thongso" style="text-align: center;">
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="ship">
                                <i class="fas fa-shipping-fast fa-3x" style="color: rgb(195, 245, 145);"></i>
                                <p><b>GIAO HÀNG TOÀN QUỐC</b></p>
                                <p>Vận chuyển khắp việt nam</p>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="pay">
                                <i class="fas fa-money-check fa-3x" style="color: rgb(195, 245, 145);"></i>
                                <p><b>THANH TOÁN KHI NHẬN HÀNG</b></p>
                                <p>Nhận hàng tại nhà rồi thanh toán</p>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="update">
                                <i class="fas fa-wrench fa-3x" style="color: rgb(195, 245, 145);"></i>
                                <p><b>BẢO HÀNH DÀI HẠN</b></p>
                                <p>Bảo hành lên đến 60 ngày</p>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="exchange">
                                <i class="fas fa-undo fa-3x" style="color: rgb(195, 245, 145);"></i>
                                <p><b>ĐỔI HÀNG DỄ DÀNG</b></p>
                                <p>Đổi hàng thoải mái trong 30 ngày</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container product-top">
                <h3>SẢN PHẨM NỔI BẬT</h3>
                <div class="row">
                <c:forEach items="${listT}" var="o">
                    <div class="col-sm-3 product-top-list">
                        <img src="${o.image}" width="300" height="300">
                        <div style="margin-left:18px; ">
                            <a href="detail?id=${o.id}" class="nav-link">
                                <p>${o.name}</p>
                            </a>
                        </div>
                        <div class="prices">
                            <p>${o.price} $</p>
                        </div>
                        <div class="cart">
                            <a href="cart?pid=${o.id}" class="nav-link"><i class="fas fa-cart-plus fa-3x" style="color: black;margin-left: -15px;"></i></a>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <div class="container product-selling">
            <h3>SẢN PHẨM</h3>
            <div class="row">
                <c:forEach items="${listP}" var="o">
                    <div class="col-sm-3 product-top-list">
                        <img src="${o.image}" width="300" height="300">
                        <div style="margin-left:18px; ">
                            <a href="detail?id=${o.id}" class="nav-link">
                                <p>${o.name}</p>
                            </a>
                        </div>
                        <div class="prices">
                            <p>${o.price} $</p>
                        </div>
                        <div class="cart">
                            <a href="cart?pid=${o.id}" class="nav-link"><i class="fas fa-cart-plus fa-3x" style="color: black;margin-left: -15px;"></i></a>
                        </div>
                    </div>
                </c:forEach>

            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- jQuery -->
        <!-- Bootstrap JavaScript -->
        <script src="bootstrap/js/bootstrap.min.js "></script>
    </body>

</html>
