<%-- 
    Document   : ManagerAdmin
    Created on : Jun 15, 2021, 8:00:20 PM
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

        <link href="css/manager.css" rel="stylesheet" type="text/css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="table-wapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">    
                            <h3>
                                Manager Admin
                            </h3>
                        </div>
                        <div class="col-sm-6">
                            <a href="#add"  class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Admin</span></a>
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>UserName</th>
                            <th>Password</th>
                            <th>Is-Sell</th>
                            <th>Is-Admin</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${listA}" var="o">
                        <tr>
                            <td>${o.uID}</td>
                            <td>${o.user}</td>
                            <td>
                                ${o.pass}
                            </td>
                            <td>${o.isSell}</td>
                            <td>${o.isAdmin}</td>
                            <td>

                                <a href="loadacc?uid=${o.uID}"  class="edit" data-toggle="modal"><i class="fas fa-edit" data-toggle="tooltip" title="Edit"></i></a>
                                <a href="deleteAcc?uid=${o.uID}" class="delete" data-toggle="modal"><i class="fas fa-trash" data-toggle="tooltip" title="Delete"></i></a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="clearfix">
                    <ul class="pagination">
                        <c:forEach begin="1" end="${endP}" var="o">
                            <li class="page-item ${tag==o?"active":""}"><a href="managerad?index=${o}" class="page-link">${o}</a></li>
                            </c:forEach>
                    </ul>
                </div>
            </div>       
            <a href="home"><button type="button" class="btn btn-primary">Back to home</button></a>
        </div>
        <div id="add" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="addacc" method="post">
                        <div class="modal-header">	
                            <p class="text-danger alert">${mess}</p>
                            <h4 class="modal-title">Add User</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>User Name</label>
                                <input name="user" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input name="pass" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>is-Sell</label>
                                <textarea name="sell" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>is-Admin</label>
                                <textarea name="admin" class="form-control" required></textarea>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
