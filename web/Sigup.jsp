<%-- 
    Document   : Sigup
    Created on : Jun 5, 2021, 6:38:31 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <link href="css/login.css" rel="stylesheet" type="text/css">
    <title>Sigup</title>
</head>

<body>
    <div class="container" style="margin-top: 100px; margin-left: 440px;">
        <button class="btn btn-primary btn-block" type="button" id="btn-signup" style="width:400px;"><i class="fas fa-user-plus"></i> Sign up New Account</button>
        <form action="sigup" method="post" class="form-signup" style="width:400px;">
            <p class="text-danger alert">${mess}</p>
            <input name="user" type="user" id="user" class="form-control" placeholder="User Name" required autofocus="">
            <input name="pass" type="password" id="user-pass" class="form-control" placeholder="Password" required autofocus="">
            <input name="repass" type="password" id="user-repeatpass" class="form-control" placeholder="Repeat Password" required autofocus="">

            <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i> Sign Up</button>
            <a href="Login.jsp" id="cancel_signup"><i class="fas fa-angle-left"></i> Back</a>
        </form>
    </div>
    <script src="bootstrap/js/bootstrap.min.js "></script>
</body>

</html>
