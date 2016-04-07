<%-- 
    Document   : AddCompany
    Created on : Apr 6, 2016, 9:36:01 PM
    Author     : Kerev
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
            $(document).ready(function(){ 
                 $("#regBtn").click(function(){
                        
			});
		}); 
        </script>
        <script src ="http://code.jquery.com/jquery-latest.js"></script>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Company</title>
    </head>
    <body>
        <div id="reg1">
            <h1>Edit Your Profile</h1>
             <form name="editForm" method="POST" action="AddCompanyServlet">
          <div class="panel panel-primary">
                <div class="panel-heading">Edit Your Profile</div>
                 <div class="panel-body">
                 
                     <div class="row">
                         <div class="col-sm-6"><h2><strong>Update Details</strong><span class="glyphicon glyphicon-update"></span></h2>
                     
             <div class="form-group">
                <%String email = (request.getAttribute("email")).toString();%>
                <%String pass = (request.getAttribute("password")).toString();%>
                <h1><%=email%></h1>
                <input type="hidden" class ="form-control" name ="email" id="email" value=<%=email%>>
                <input type="hidden" class ="form-control" name = "password" id="password" value=<%=pass%>>
                Name: <input type="text" placeholder="Company Name" name="name" id="name"class="form-control">
                Address: <input type="text" placeholder="Company Physical Address" name="address" id="address" class="form-control">
                Contact Number: <input type="text" placeholder="Company Telephone" name="contact" id="contact"class="form-control">
                Category: <input type="text" placeholder="Company Name" name="cat" id="cat"class="form-control">
                <button type="submit" id="regBtn" class="btn btn-primary">Sign Up</button>
             </div>
                 </div>
                 </div>
                 </div>
                 </div>
        </form>
        </div>
    </body>
</html>
