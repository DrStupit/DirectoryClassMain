<%-- 
    Document   : Login
    Created on : Apr 7, 2016, 7:55:49 AM
    Author     : Kerev
--%>

<%@page import="Model.PojoCompany"%>
<%@page import="Model.hibernateDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src ="http://code.jquery.com/jquery-latest.js"></script>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
      
            <% String email = (request.getAttribute("email")).toString();%>
            <% String pwd = (request.getAttribute("password")).toString();%>
            
            <% hibernateDao dao = new hibernateDao(); 
               PojoCompany company = dao.getLogin(email);
            if (company != null){%>
            <h2>Welcome Back <%=company.getCompname()%></h2>
            
            
            <div id="editLoginBox">
           
             <form name="editForm" method="POST" action="UpdateCompanyServlet">
                  <div class="panel panel-primary">
                <div class="panel-heading">Edit Your Profile</div>
                 <div class="panel-body">
                 
                     <div class="row">
                         <div class="col-sm-6"><h2><strong>Update Details</strong><span class="glyphicon glyphicon-update"></span></h2>
                     
             <div class="form-group">
                 
                <%String emailU = company.getCompemail();%> 
                <%String passwordU = company.getComppassword();%>
                <%String nameU = company.getCompname();%>
                <%String addressU = company.getCompaddress();%>
                <%String contactU = company.getCompcontact();%>
                <%int catID = company.getCatid();%>
                <%int compID = company.getCompid();%>
               
                Email: <input type="text" class ="form-control" name ="email" id="email" value=<%=email%>>
                Password: <input type="text" class ="form-control" name = "password" id="password" value=<%=passwordU%>>
                Name: <input type="text" placeholder="Company Name" name="name" id="name"class="form-control"value=<%=nameU%>>
                Address: <input type="text" placeholder="Company Physical Address" name="address" id="address" class="form-control"value=<%=addressU%>>
                Contact Number: <input type="text" placeholder="Company Telephone" name="contact" id="contact"class="form-control"value=<%=contactU%>>
                <input type="hidden" placeholder="Company Name" name="cat" id="cat"class="form-control"value=<%=catID%>>
                <input type="hidden" class ="form-control" name ="id" id="id" value=<%=compID%>>
                <button type="submit" id="regBtn" class="btn btn-primary">Update</button>
                <button type="button" id="homeBtn" onclick="./index.jsp" class="btn btn-primary"><span class="glyphicon glyphicon-home"></span>Home</button>
             </div>
                </div>
                </div>
                </div>
                </div>
        </form>
        </div>
            
            
            
            <%} else{%>
                 <h2>Login failed - Please try again</h2>
            <%}%>
        
    </body>
</html>
