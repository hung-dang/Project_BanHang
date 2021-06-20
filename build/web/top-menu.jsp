<%-- 
    Document   : top-menu
    Created on : Jun 5, 2021, 4:52:47 AM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container-fluid header" style="background-color:rgb(240, 232, 232);">
            <div class="row">
                <div class="col-sm-3 system">
                    <ul class="nav nav-menu" style=" font-family: Tahoma; font-size: 13px;">
                        <li class="nav-item nav-hover"><a href="home" class="nav-link"><b>HỆ THỐNG CỬA HÀNG</b></a></li>
                    </ul>
                </div>
                <div class="col-sm-3"></div>
                <div class="col-sm-6 order">
                    <ul class="nav nav-menu" style=" font-family: Tahoma;color: black; font-size: 12px; float:left;">
                        <c:if test="${sessionScope.a.isAdmin==0&&sessionScope.a.isSell==0}">
                            <li class="nav-item nav-hover"><a href="Cart.jsp" class="nav-link "><b>Kiểm tra đơn hàng</b></a></li>
                            </c:if>    
                            <c:if test="${sessionScope.a.isSell==1}">
                            <li class="nav-item nav-hover"><a href="ManagerProduct" class="nav-link "><b>Manager Product</b></a></li>
                            </c:if>
                            <c:if test="${sessionScope.a.isAdmin==1}">
                            <li class="nav-item nav-hover"><a href="managerad" class="nav-link "><b>Manager Admin</b></a></li>
                            </c:if>
                            <c:if test="${sessionScope.a!=null}">
                            <li class="nav-item nav-hover"><a href="#" class="nav-link "><b>${sessionScope.a.user}</b></a></li>
                            <li class="nav-item nav-hover"><a href="logout" class="nav-link "><b>LogOut</b></a></li>
                            </c:if>
                            <c:if test="${sessionScope.a==null}">
                            <li class="nav-item nav-hover"><a href="Login.jsp" class="nav-link "><b>LogIn</b></a></li>
                            </c:if>

                    </ul>
                </div>
            </div>
        </div>
        <div class="container-fluid menu-shoes">
            <div class="row ">
                <div class="col-sm-3 img-logo ">
                    <a href="home" class="nav-link "><img src="image/logo2.png" width="120px"></a>
                </div>
                <div class="col-sm-6 brand">
                    <ul class="nav nav-menu" style=" font-family: Tahoma;color: black; font-size: 12px;border: 0px">
                            <c:forEach items="${listC}" var="o">
                            <li class="list-group-item ${tag==o.cid?"active":""}"><a href="Category?cid=${o.cid}" class="nav-link "><b>${o.cname}</b></a></li>
                                    </c:forEach>
                    </ul>
                </div>
                <div class="col-sm-3 icon-search-giohang">
                    <form action="Search" method="post" class="form-inline my-2 my-lg-0">
                        <ul class="nav nav-menu">
                            <input value="${txtvalues}" name="txt" type="text" id="search" placeholder="Search..." style="margin-left:-40px; "/>
                            <button type="submit">
                                <li class=" nav-hover"> <a class="nav-link"><i class="fas fa-search fa-1x" style="color: black"></i></a></li>
                            </button>
                            <li class="nav-item nav-hover"><a href="Cart.jsp" class="nav-link"><i class="fas fa-shopping-cart fa-1x"style="color: black;"></i></a></li>
                        </ul>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
