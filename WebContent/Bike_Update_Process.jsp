 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@include file="Header.jsp" %>

<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body background=images/garage.jpg>
<%
String cid=request.getParameter("cid");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bgm", "root", "root");
Statement st=conn.createStatement();
ResultSet rs=st.executeQuery("Select * from customers_reg where cid="+cid);
while(rs.next()){
%>
<div class="panel-body">
<div class="container">
<br/><br/><br/><br/>
	<div class="row">
	<div class="col-sm-2"></div>
	
		<div class="col-sm-8">
		<div class="col-sm-3"></div>
		<div class="col-sm-2"></div>
		   
			<form method="post">
  <div class="form-group"> 
                <input type="text"class="form-control" name="cname"value="<%out.println(rs.getString(8));%>"> 
            </div>
            <div class="form-group"> 
                <input type="text" class="form-control"name="bname"value="<%out.println(rs.getString(2));%>"> 
            </div> 
            
                        <div class="form-group"> 
                <input type="text" class="form-control"name="bnum"value="<%out.println(rs.getString(3));%>"> 
            </div> 
              
              <div class="form-group"> 
                <input type="text" class="form-control"name="address" value="<%out.println(rs.getString(4));%>"> 
            </div> 
                        <div class="form-group"> 
                <input type="text" class="form-control"name="contact" value="<%out.println(rs.getString(5));%>"> 
            </div> 

            <div class="form-group"> 
                <input type="text" class="form-control" name="city" value="<%out.println(rs.getString(6));%>"> 
            </div> 
                        <div class="form-group"> 
                <input type="text" class="form-control" name="sdate" value="<%out.println(rs.getString(7));%>"> 
            </div> 
		<center><input type="submit" name="sub" value="UPDATE"/></center>
    </form>
            
		</div>
		<div class="col-sm-2"></div>  
	</div>
</div>
</div>
<% 

}
}
catch(Exception e)
{
out.print(e);
e.printStackTrace();
}
%> 
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
     Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/bgm","root","root");
 
     PreparedStatement ps=(PreparedStatement) conn.prepareStatement
   ("update customers_reg set bname=?,bnum=?,address=?,contact=?,city=?,sdate=?,cname=? where cid="+cid);
     ps.setString(1,bname.toUpperCase());
     ps.setString(2,bnum.toUpperCase());
     ps.setString(3,address.toUpperCase());
     ps.setString(4,contact);
     ps.setString(5,city.toUpperCase());
     ps.setString(6,sdate);
     ps.setString(7,cname.toUpperCase());
  
int i =ps.executeUpdate();
if(i>0)
{
response.sendRedirect("Bike_User_View.jsp");	
}
}catch(Exception e){
	out.print(e);
	e.printStackTrace();
	
}
}
%>
</body>
<script>

</script>
</html>