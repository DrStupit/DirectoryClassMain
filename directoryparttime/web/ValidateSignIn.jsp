<%-- 
    Document   : ValidateSignIn
    Created on : Apr 7, 2016, 8:08:54 AM
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
        <title>JSP Page</title>
    </head>
    <body>
          <form name="signinForm" method="POST" action="loginServlet">
             <div class="form-group">
                 <h2>Sign In</h2>
                Email: <input type="text" placeholder="Email" name="email" id="email"class="form-control">
                Password: <input type="text" placeholder="Password" name="pwd" id="pwd" class="form-control">
                <button type="submit" id="signBtn" class="btn btn-primary">Sign Up</button>
          </div>
          </form>
    </body>
</html>
