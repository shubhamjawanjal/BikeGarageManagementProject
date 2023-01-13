<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*" %>
<%@include file="Header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bike Garage</title>
  	  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body background=images/bw3.jpg>
    <div class="panel-body">
<div class="container">
	<div class="row">
	<div class="col-sm-2"></div>
	
		<div class="col-sm-8">
		<div class="col-sm-3"></div>
		<div class="col-sm-2"></div>
	
			<form method="post">
			<br/><br/><br/><br/>
			<h1 style="font-family:Becker;color:#ffffff;"><center>Customer Registration</center></h1>
		  
            <div class="form-group"> 
                <input type="text"class="form-control" name="cname" placeholder="Enter Customer Name" required> 
            </div>
            
           
           <div class="form-group"> 
                <input type="text" class="form-control"name="bname" placeholder="Enter Bike Name" required> 
            </div> 
            <div class="form-group"> 
                <input type="text" class="form-control"name="bnum" placeholder="Enter Bike Number" required> 
            </div> 

            <div class="form-group"> 
                <input type="text" class="form-control" name="address" placeholder="Enter Address" required> 
            </div> 
            
            <div class="form-group"> 
                <input type="text" class="form-control" name="contact" placeholder="Enter Contact" required> 
            </div> 
            
            <div class="form-group"> 
                <input type="text" class="form-control" name="city" placeholder="Enter City" required> 
            </div> 
            
             <div class="form-group"> 
                <input type="date" class="form-control" name="sdate" placeholder="Enter Date" required> 
            </div> 
           
                <center><input type="submit"  name="sub" value="Register"/> </center>

            </form>
            
		</div>
		<div class="col-sm-2"></div>  
	</div>
</div>
</div>

<%
String buttonclick=request.getParameter("sub");
if(buttonclick!=null){
String cname=request.getParameter("cname");
String bname=request.getParameter("bname");
String bnum=request.getParameter("bnum");
String address=request.getParameter("address");
String contact=request.getParameter("contact");
String city=request.getParameter("city");
String sdate=request.getParameter("sdate");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bgm","root","root");
PreparedStatement prst=conn.prepareStatement("insert into customers_reg(bname,bnum,address,contact,city,sdate,cname)values(?,?,?,?,?,?,?)");
prst.setString(1,bname.toUpperCase());
prst.setString(2,bnum.toUpperCase());
prst.setString(3,address.toUpperCase());
prst.setString(4,contact);
prst.setString(5,city.toUpperCase());
prst.setString(6,sdate);
prst.setString(7,cname.toUpperCase());
prst.executeUpdate();
%>
<script>
alert("Customer Added Successfully");

</script>
<%

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
}
%>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

</body>
</html>