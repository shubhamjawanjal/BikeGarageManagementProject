<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*,java.util.*"%>
<%@page import="java.time.LocalDateTime" %>
<%@page import="java.time.format.DateTimeFormatter" %>
<%@include file="Header.jsp" %>
<html>
<head>
	<title>Bike</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
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
	<br/>
			<form method="post">
			<div class="form-group">
			<input class="form-control" type="text" name="cust" placeholder="Enter Customer Name">
			</div>
	<center><input type="submit" name="sub" value="SHOW CUSTOMERS"></center>
  <%
String buttonclick=request.getParameter("sub");
  String cust=request.getParameter("cust");
  if(cust!=null){
      cust = cust.toUpperCase();
    }
  if(buttonclick!=null){
	  int i=0;
try
{
%>
	<center>
	
	</center>

    
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bgm", "root","root");
Statement st=conn.createStatement();

ResultSet rs=st.executeQuery("Select * from customers_reg where cname='"+cust+"'");

while(rs.next()){
	i++;
%>
				<h1 style="font-family:Times New Roman;color:#ffffff;"><center>Registered Customers List</center></h1>
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
        <th>ACTION</th>
    </tr>
    </thead>
<tr>
	<td><%out.print(""+i);%></td>
    <td height="50"><%=rs.getString("cname")%></td>
    <td><%=rs.getString("bname")%></td>
     <td><%=rs.getString("address")%></td>
      <td><%=rs.getString("contact")%></td>
       <td><%=rs.getString("city")%></td>
              <td><%=rs.getString("sdate")%></td>
          <td><a href="Billing.jsp?cid=<%=rs.getString("cid")%>">
<button type="button">SERVICE</button></a></td>
              </tr>
              
<%
}
}
catch(Exception e)
{
out.print(e);
e.printStackTrace();
}
if(i<=0){
	%>
	<script>
alert("Customer Not Found");
	</script>
	<%

	
}
  }
%>
</table>
           </form>
            
		</div>
		<div class="col-sm-2"></div>  
	</div>
</div>


</div><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<%
LocalDateTime myDateObj = LocalDateTime.now();  
  
DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("dd-MMM-yyyy HH:mm:ss");  

String formattedDate = myDateObj.format(myFormatObj);  
 
%>

<b><p style="color:#ffffff;font-size:20px;text-align:right;">
<%out.println(formattedDate); %>
</p></b>	

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

</body>
</html>