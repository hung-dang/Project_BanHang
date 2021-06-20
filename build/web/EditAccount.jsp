<%-- 
    Document   : edit
    Created on : Jun 15, 2021, 7:34:37 AM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />

        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="modal-content">
                <div class="row">
                    <div class="col-sm-6">    
                        <h3>
                            Edit Product
                        </h3>
                    </div>
                </div>
            </div>

            <div>
                <div >
                    <div class="modal-content">
                        <form action="editacc" method="post">
                            <div class="modal-body">	
                                <div class="form-group">
                                    <label>ID</label>
                                    <input value="${acc.uID}" name="uid" type="text" class="form-control" readonly required>
                                </div>
                                <div class="form-group">
                                    <label>User Name</label>
                                    <input value="${acc.user}" name="user" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input value="${acc.pass}" name="pass" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>is sell (Chon 1 : co quyen-----Chon 0: khong co quyen)</label>
                                    <input value="${acc.isSell}" name="sell" type="number" placeholder="1 la co quyen 0 la khong co quyen " class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>is admin (Chon 1 : co quyen-----Chon 0: khong co quyen)</label>
                                    <input value="${acc.isAdmin}" name="admin" placeholder="1 la co quyen 0 la khong co quyen " type="number" class="form-control" required>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                <input type="submit" class="btn btn-info" value="Save">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>
