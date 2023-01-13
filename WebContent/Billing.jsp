 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {		
		$(".my-activity").click(function(event) {
			var total = 0;
			$(".my-activity:checked").each(function() {
				total += parseInt($(this).val());
			});
			
			if (total == 0) {
				$('#amount').val('');
			} else {				
				$('#amount').val(total);
			}
		});
	});	
	</script>
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
            
			<div style="color:#ffffff;">
			<input class="my-activity" type="checkbox" value="250"> Servicing (250)<br/>
			<input class="my-activity" type="checkbox" value="200"> Oiling (200)<br/>
			<input class="my-activity" type="checkbox" value="50"> Washing(50)<br/>
			<input class="my-activity" type="checkbox" value="300">Wiring(50)<br/>
			<input class="my-activity" type="checkbox"  value="100"> Polishing(100)<br/>	
			<input class="my-activity" type="checkbox"  value="100"> Breaks(100)<br/>	
			</div> 
			<p>
			<strong style="color:#ffffff;">Amount (Rupees)</strong>: 
			<input type="text" name="amount" id="amount" readonly/>
		</p>
		<p>

		</p>
            
		<center><input type="submit" name="sub" value="SAVE BILL"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<button onclick="myBill()">PRINT BILL</button>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="Servicing.jsp"><input type="button" value="BACK"></a></center>
		<script>
function myBill() {
  window.print();
}
</script>
		<%
		String strBill=request.getParameter("sub");
		
		if(strBill!=null){
			String strid=rs.getString(1);
			String str1=rs.getString(8);
			String str2=rs.getString(2);
			String str3=rs.getString(3);
			String str4=rs.getString(4);
			String str5=rs.getString(5);
			String str6=rs.getString(6);
			String str7=rs.getString(7);
			String bill=request.getParameter("amount");
			
			PreparedStatement prst=conn.prepareStatement("insert into bill(cid,cname,bname,bnum,address,contact,city,sdate,amount)values(?,?,?,?,?,?,?,?,?)");
			prst.setString(1,strid.toUpperCase());
			prst.setString(2,str1.toUpperCase());
			prst.setString(3,str2.toUpperCase());
			prst.setString(4,str3);
			prst.setString(5,str4.toUpperCase());
			prst.setString(6,str5);
			prst.setString(7,str6.toUpperCase());
			prst.setString(8,str7);
			prst.setString(9,bill);
			int i=prst.executeUpdate();	
			if(i>0)
			{
			response.sendRedirect("Bill_Data.jsp");	
			}
		}
		%>
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