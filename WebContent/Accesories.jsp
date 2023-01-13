<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accesories</title>
<style>
body {
  font-family: 'Helvetica';
  background-color: #0e2439;
}

.filter-buttons {
  display: flex;
  margin-bottom: 20px;
}

.list-view-button,
.grid-view-button {
  color: white;
  border: 1px solid white;
  padding: 5px;
  font-size: 14px;
  cursor: pointer;
  border-radius: 3px;
}

.list-view-button:hover,
.grid-view-button:hover {
  background: white;
  color: #0e2439;
}

.list-view-button {
  margin-right: 10px;
}

.list {
  list-style: none;
  margin: 0;
  padding: 0;
  display: flex;
}

li {
  background-color: #1f364d;
  color: white;
  border-radius: 3px;
  margin-bottom: 10px;
  transition: 0.3s;
}


.list.list-view-filter {
  flex-direction: column;
}

.list.list-view-filter li {
  padding: 10px;
}

.list.grid-view-filter {
  flex-flow: row wrap;
}

.list.grid-view-filter li {
  width: calc(50% - 210px);
  padding: 100px;
  margin-right: 10px;
  text-align: center;
}
</style>
</head>
<body>
<center><h1 style="font-family:times new roman;color:#ffffff">ACCESORIES</h1></center>
<div class="filter-buttons">
  <div class="list-view-button"><i class="fa fa-bars" aria-hidden="true"></i> List view</div>
  <div class="grid-view-button"><i class="fa fa-th-large" aria-hidden="true"></i> Grid view</div> &nbsp;&nbsp;
   <a href="Servicing.jsp"> <div class="grid-view-button"><i class="fa fa-th-large" aria-hidden="true"></i> Home</div></a>

</div>

<ol class="list list-view-filter">
  <li><img class="img-responsive" src="images/ac1.png">
  <h3>Brake Shoe</h3>	
  <h4>204 Rupees Per Unit</h4>
  </li>
  
  <li><img class="img-responsive" src="images/ac2.jpg">
  <h3>Control Cables</h3>
  <h4>405 Rupees Per Unit</h4>
  </li>
  
  
  <li><img class="img-responsive" src="images/ac3.jpg">
  <h3>Chain SPRocket Kit</h3>
  <h4>722 Rupees Per Unit</h4>
  </li>
  
  <li><img class="img-responsive" src="images/ac4.png">
  <h3>Clutch Friction Plate</h3>
  <h4>250 Rupees Per Unit</h4>
  </li>
  <li><img class="img-responsive" src="images/ac5.png">
  <h3>CYLINDER BLOCK PISTON</h3>
  <h4>900 Rupees Per Unit</h4>
  </li>
  
  <li><img class="img-responsive" src="images/ac6.jpg">
  <h3>ELEMENT OIL FILTER</h3>
  <h4>100 Rupees Per Unit</h4>
  </li>
    <li><img class="img-responsive" src="images/ac7.jpg">
    <h3>ELEMENT AIR FILTER</h3>
    <h4>1000 Rupees Per Unit</h4>
    </li>
  <li><img class="img-responsive" src="images/ac8.jpg">
  <h3>HEAD LAMP ASSEMBLY</h3>
  <h4>1498 Rupees Per Unit</h4>
  </li>
  <li><img class="img-responsive" src="images/ac9.jpg">
  <h3>SHOCK ABSORBER</h3>
  <h4>1423 Rupees Per Unit</h4>
  </li>
  <li><img class="img-responsive" src="images/ac10.png">
  <h3>SPARK PLUG</h3>
  <h4>153 Rupees Per Unit</h4>
  </li>
</ol>
<script>
const listViewButton = document.querySelector('.list-view-button');
const gridViewButton = document.querySelector('.grid-view-button');
const list = document.querySelector('ol');

listViewButton.onclick = function () {
  list.classList.remove('grid-view-filter');
  list.classList.add('list-view-filter');
}

gridViewButton.onclick = function () {
  list.classList.remove('list-view-filter');
  list.classList.add('grid-view-filter');
}
</script>
</body>
</html>