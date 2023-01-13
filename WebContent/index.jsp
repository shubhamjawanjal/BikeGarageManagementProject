<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import= "java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>   
 

<html>
<head>
	<title>Bike Garage Management</title>
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
<div class="panel-body"></div>
<div class="container">

	<div class="row">	
	<div class="col-sm-2"></div>
	
		<div class="col-sm-8">
		<div class="col-sm-3"></div>
		<div class="col-sm-2"></div>
		<form action="" method="post">
		<br/><br/><br/><br/>
<center>
  <img src="images/bw.png" alt="logo" />
<div class="header">

  <h1 style="color:#ffffff;">BIKE GARAGE MANAGEMENT</h1>
   
</div>
</center>
		<br/><br/>
		<center><h1 style="color:#ffffff;font-family:times new roman;">ADMIN LOGIN</h1></center>
		<div class="form-group">
        <input type="text" class="form-control" name="uname" placeholder="Enter User Name">
		</div>
			<div class="form-group">
        <input type="password" class="form-control" name="pwd" placeholder="Enter Password">
		</div>
	<center><input type="submit" value="LOGIN" name="btnadmin" ></center><br/>
	<center> <input type="Submit" value="Exit" backgroundcolor="red"></center>
	
	
	<a style="font-family:times new roman;color:#ffffff;" href="Forget_Password.jsp">Forget Password</a>
		</form>
        <%
            String str=request.getParameter("btnadmin");
        String struname=request.getParameter("uname");
        String strpwd=request.getParameter("pwd");
        if(str!=null){
        	
        	if(struname.contentEquals("shubham jawanjal")&&strpwd.contentEquals("8378862624")
        		||strpwd.contentEquals("getPass")	
        		||struname.contentEquals("Sjawanjal")&&strpwd.contentEquals("8378862624")	
        			){
        	%>
				<script>
                     window.location="Servicing.jsp";
                 </script>
                 
        	<%
        	}else
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="script.js"></script>

        <!-- Only used for the demos ads. Please ignore and remove. --> 
        <script src="https://cdn.tutorialzine.com/misc/enhance/v3.js" async></script>
</body>
</html>