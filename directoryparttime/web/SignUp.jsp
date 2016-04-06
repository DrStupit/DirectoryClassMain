<%-- 
    Document   : SignUp
    Created on : Apr 6, 2016, 9:47:46 PM
    Author     : Kerev
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <script src ="http://code.jquery.com/jquery-latest.js"></script>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
    </head>
    <body>
        <h1> Register Your Company </h1>
        <div class="col-sm-6">    
        <form name="regForm" method="POST" action="SignUpServlet">
             <div class="form-group">
                Email: <input type="text" placeholder="Email" name="email" id="email"class="form-control">
                Password: <input type="text" placeholder="Password" name="pwd" id="pwd" class="form-control">
                <button type="submit" id="regBtn" class="btn btn-primary">Sign Up</button>
             </div>
        </form>
        </div>
    </body>
</html>
