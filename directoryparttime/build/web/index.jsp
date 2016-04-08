<%-- 
    Document   : index
    Created on : Apr 6, 2016, 5:43:22 PM
    Author     : Kerev
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            <%--css code and style for bootstrap goes here...--%>
            #custom-bootstrap-menu.navbar-default .navbar-brand {
    color: rgba(8, 8, 8, 1);
}
   .bg-1 { 
		background-color: rgba(59, 141, 189, 1); /* Green */
		color: #12C0DB;
                 border-width: 4px;
                border-radius: 15px;
		padding-top: 50px;
		padding-bottom: 50px;
		padding-left: 70px;
		padding-right: 70px;
		font-family: "Times New Roman", Times, serif;
		}
#custom-bootstrap-menu.navbar-default {
    font-size: 12px;
    background-color: rgba(59, 141, 189, 1);
    border-width: 4px;
    border-radius: 15px;
}
#custom-bootstrap-menu.navbar-default .navbar-nav>li>a {
    color: rgba(255, 255, 255, 1);
    background-color: rgba(59, 141, 189, 1);
    background: -webkit-linear-gradient(top, rgba(248, 248, 248, 0) 0%, rgba(59, 141, 189, 1) 100%);
    background: linear-gradient(to bottom, rgba(248, 248, 248, 0) 0%, rgba(59, 141, 189, 1) 100%);
}
#custom-bootstrap-menu.navbar-default .navbar-nav>li>a:hover,
#custom-bootstrap-menu.navbar-default .navbar-nav>li>a:focus {
    color: rgba(9, 242, 40, 0.96);
    background-color: rgba(74, 82, 73, 1);
    background: -webkit-linear-gradient(top, rgba(248, 248, 248, 0) 0%, rgba(74, 82, 73, 1) 100%);
    background: linear-gradient(to bottom, rgba(248, 248, 248, 0) 0%, rgba(74, 82, 73, 1) 100%);
}
#custom-bootstrap-menu.navbar-default .navbar-nav>.active>a,
#custom-bootstrap-menu.navbar-default .navbar-nav>.active>a:hover,
#custom-bootstrap-menu.navbar-default .navbar-nav>.active>a:focus {
    color: rgba(85, 85, 85, 1);
    background-color: rgba(0, 188, 235, 1);
}
#custom-bootstrap-menu.navbar-default .navbar-toggle {
    border-color: #00bceb;
}
#custom-bootstrap-menu.navbar-default .navbar-toggle:hover,
#custom-bootstrap-menu.navbar-default .navbar-toggle:focus {
    background-color: #00bceb;
}
#custom-bootstrap-menu.navbar-default .navbar-toggle .icon-bar {
    background-color: #00bceb;
}
#custom-bootstrap-menu.navbar-default .navbar-toggle:hover .icon-bar,
#custom-bootstrap-menu.navbar-default .navbar-toggle:focus .icon-bar {
    background-color: #3b8dbd;
}
        </style>
        <script src ="http://code.jquery.com/jquery-latest.js"></script>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <script>
            
$(document).ready(function(){ 
               
$("#catBtn").click(function(){
			
      $.ajax({
                    
                    url:'http://localhost:8080/directoryparttime/ViewCategoryServlet',
                    data: {format: 'html'},
                    dataType: 'html',
                    error: function(){$("#countryBox").append("<h3>Failed</h3>");},
                    success: function(data){$("#countryDl").append(data);},
                    type: 'GET'
	    });
                
	});
        
$("#countryDl").change(function(category){
        category=$("#countryDl").val();	
      $.get("./GetByCategoryServlet?Code="+category+"",
            function(data){$("#companyDl").html(data);});
                
	});
        
$("#companyDl").change(function(compID){
        compID=$("#companyDl").val();	
      $.get("./GetCompanyServlet?Code="+compID+"",
            function(data){$("#tbl").html(data);});
                
	});
				
		
}); 
        </script>
        <script src ="http://code.jquery.com/jquery-latest.js"></script>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Directory</title>
    </head>
    <body>
         <div id="custom-bootstrap-menu" class="navbar navbar-default " role="navigation">
        <div class="container-fluid">
             <div class="navbar-header"><a class="navbar-brand" href="#">Directory</a>
             <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
              </button>
        </div>
        <div class="collapse navbar-collapse navbar-menubuilder">
            <ul class="nav navbar-nav navbar-left">
                <li><a href="/"><span class="glyphicon glyphicon-home"></span>Home</a></li>
                 
            </ul>   
            <ul class="nav navbar-nav navbar-right">
                <li><a href="./SignUp.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                <li><a href="./ValidateSignIn.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            </ul>
        </div>
    </div>
</div>
                        
      <div class="panel panel-primary">
                <div class="panel-heading">Select a Category</div>
                 <div class="panel-body">
                 
                     <div class="row">
                         <div class="col-sm-12">
                       
                          <div id ="countryBox">
                            <select id="countryDl">
                                <option></option>   
                            </select>
                            <select id="companyDl">
                                <option></option>   
                            </select>
                            <input type="button" value="View"  id="catBtn">
                          </div>
                             
                             <div id="specBox">
				<table class = "table table-bordered" id="tbl" >
					
				</table>
			</div>
                         </div>
                     </div>
                 </div>
      </div>
        
        
    </body>
</html>
