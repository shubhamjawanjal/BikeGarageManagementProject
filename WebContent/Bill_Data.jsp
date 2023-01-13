<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@include file="Header.jsp" %>
<html>
<head>
	<title>Bike</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

<style>
thead,td{
color:#6666ff;
background-color:#ffffff;
font-family:Times New Roman;
font-size:20px;
}
</style>
</head>
<body background=images/garage.jpg>
<div class="panel-body">
<div class="container">
<br/><br/><br/><br/>
	<div class="row">
	<div class="col-sm-2"></div>
	
		<div class="col-sm-8">
		<div class="col-sm-3"></div>
		<div class="col-sm-2"></div>
	
			<form>
			<h1 style="font-family:Times New Roman;color:#ffffff;"><center>Customers Bill Data</center></h1>
	
  <%
String buttonclick=request.getParameter("sub");
try
{
%>
	<center>
    <table class="table table-bordered">
    <thead style="border-width: 10; width: 250; border-color: red green blue yellow;  border-style: ridge">
   <tr>
   		<th>Sr. No.</th>
	    <th>CUSTOMER NAME</th>
        <th>VEHICLE NAME</th>
        <th>ADDRESS</th>
        <th>CONTACT</th>
        <th>CITY</th>
        <th>SERVICING DATE</th>
        <th>BILL</th>
    </tr>
    </thead>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bgm", "root","root");
Statement st=conn.createStatement();

ResultSet rs=st.executeQuery("Select * from bill");
int i=0;
while(rs.next()){
	i++;
%>
<tr>
	<td><%out.print(""+i); %></td>
    <td height="50"><%=rs.getString("cname")%></td>
    <td><%=rs.getString("bname")%></td>
     <td><%=rs.getString("address")%></td>
      <td><%=rs.getString("contact")%></td>
       <td><%=rs.getString("city")%></td>
        <td><%=rs.getString("sdate")%></td>
         <td><%=rs.getString("amount") %></td>
<%
}
}
catch(Exception e)
{
out.print(e);
e.printStackTrace();
}
%>
           </form>
            
		</div>
		<div class="col-sm-2"></div>  
	</div>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</body>
</html>