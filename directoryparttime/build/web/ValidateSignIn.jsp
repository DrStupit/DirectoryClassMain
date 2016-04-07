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
        <div class="panel panel-primary">
                <div class="panel-heading">Sign Up or Login</div>
                 <div class="panel-body">
                 
                     <div class="row">
                         <div class="col-sm-6"><h2><strong>Sign In</strong><span class="glyphicon glyphicon-user"></span></h2>
                            
                            <div class="form-group">
                            
                            Email: <input type="text" placeholder="Email" name="email" id="email"class="form-control">
                            Password: <input type="text" placeholder="Password" name="pwd" id="pwd" class="form-control">
                            <button type="submit" id="signBtn" class="btn btn-primary">Sign In</button>
                            </div>
                         </div> 
                     </div>
                  </div>
                </div>
          </form>
    </body>
</html>
