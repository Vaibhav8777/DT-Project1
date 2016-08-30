<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page isELIgnored ="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart</title>
<link rel="stylesheet" href="/ShoppingCart/resources/bootstrap/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="/ShoppingCart/resources/bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript" 
src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<style>
body{
background-image: url(/ShoppingCart/resources/img/bg16.jpg);
background-size:     cover;                      
    background-repeat:   no-repeat;
    

}
h4 {
    color:white;
}


</style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" >Wheel Spin</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="onLoad"><span class="glyphicon glyphicon-home"></span></a></li>
      
     </ul>
      
      
  </div>
</nav>
	<div class="container">
		<fieldset>
			
			<!-- here the href's value will be used to decide the 
					 controller to be executed on click of this link.
					 here "home" is mapped in spring mvc controller-->
			
			<br />
			<h2>
				<!-- display the userId just entered -->
				Welcome ${userDetails.name }
			</h2>
			<br />
		</fieldset>
	</div>
</body>
</html><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
 <%@ include file="/WEB-INF/views/footer.jsp" %>