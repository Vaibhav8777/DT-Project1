<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
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
		<div class="container-fluid">
	
<div class="col-md-2">
  <div class="row-fluid">
		<fieldset>
			<legend>Confirm Details</legend>
			<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
			<a href="${flowExecutionUrl}&_eventId_home">Home</a><br /> <br />
			<sf:form modelAttribute="userDetails">
				<sf:label path="id">User ID :</sf:label>${userDetails.id}
					<br />
				<br />
				<sf:label path="name"> User Name:</sf:label>${userDetails.name}
					<br />
				<br />
				<sf:label path="password">Password :</sf:label>${userDetails.password}
					<br />


				<sf:label path="mailID">Email:</sf:label>${userDetails.mailID}
					<br />
				<br />
				<sf:label path="contactNumber">Mobile #:</sf:label>${userDetails.contactNumber}
					<br />
				<br />
				<sf:label path="address">Address :</sf:label>${userDetails.address}
					<br />
				<br />
				<input name="_eventId_edit" type="submit"  class="btn btn-primary" value="Edit" />
				<input name="_eventId_submit" type="submit" class="btn btn-success" value="Confirm Details" />
				<br />
			</sf:form>
		</fieldset>
	</div>
	</div>
	</div>
</body>
</html><br><br><br><br><br>
 <%@ include file="/WEB-INF/views/footer.jsp" %>