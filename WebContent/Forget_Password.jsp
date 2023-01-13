 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import= "java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>   
 

<html>
<head>
	<title></title>
	  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="css/table.css">
   <style>
   .header img {
  float: left;
  width: 50px;
  height: 30px;

}

.header h1 {
  position: relative;
  top: 18px;
  left: 10px;
}
   </style>
</head>
<body background="images/garage.jpg">
<script>
    $(document).ready(function(){
       $(".dropdown-toggle").dropdown();
    });
</script>
<div class="panel-body">
<div class="container">

	<div class="row">
	<div class="col-sm-2"></div>
	
		<div class="col-sm-8">
		<div class="col-sm-3"></div>
		<div class="col-sm-2"></div>
		<form action="" method="post">
		<br/><br/><br/><br/><br/><br/>
				<center>
<div class="header">
  <h1 style="color:#ffffff;">BIKE GARAGE MANAGEMENT</h1>
   
</div>
				</center>
		<br/><br/>
		<center><h1 style="color:#ffffff;font-family:times new roman;">FORGET PASSWORD</h1></center>
		<div class="form-group">
        <input type="text" class="form-control" name="rpass" placeholder="Enter Admin ID">
		</div>
			<center><input type="submit" value="CHECK" name="btncheck"></center><br/>
					<div class="form-group">
        
	
		</form>
        <%
        String str=request.getParameter("btncheck");
        String strpass=request.getParameter("rpass");
        String strpwd=request.getParameter("pwd");
        if(str!=null){
        	
        	if(strpass.contentEquals("shubham jawanjal")){
        	%>
			<h4 style="font-family:times new roman;color:#ffffff;">First Admin's Password is : <%out.print("8378862624");%></h4><br/>
			<%
			}else if(strpass.contentEquals("vyanki")){
				%>
				<h4 style="font-family:times new roman;color:#ffffff;">Second Admin's Password is : <%out.print("vyanki");%></h4><br/>
				<%
	
			}
        	
        	else
        	{
        	%>
        					<script>
                    alert("Invalid User ! Please Try Again....");
                 </script>
        	<%
        		
        		
        	}
        }

        %>
                

       &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
       &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
        <div class="col-sm-2"></div>  
	</div>
</div>
</div>
        <center><button onclick="goBack()">Go Back</button></center>

        <script>
        function goBack() {
          window.location.href="index.jsp";
        }
        </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="script.js"></script>

        <!-- Only used for the demos ads. Please ignore and remove. --> 
        <script src="https://cdn.tutorialzine.com/misc/enhance/v3.js" async></script>
</body>
</html>