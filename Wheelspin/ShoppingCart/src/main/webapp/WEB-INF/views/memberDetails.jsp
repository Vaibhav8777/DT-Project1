<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
background-image: url(/ShoppingCart/resources/img/bg19.jpg);
background-size:     cover;                      
    background-repeat:   no-repeat;
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
	<div class="container-fluid">
	
<div class="col-md-2">
  <div class="row-fluid">
		<fieldset>
			<legend>Register Here</legend>
			<a href="${flowExecutionUrl}&_eventId_home">Home</a>
			<form:form modelAttribute="userDetails">
				<br />
				<form:label path="id">User ID:</form:label>
				<form:input path="id" />
				<br />
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('id')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>

				<form:label path="name">User Name:</form:label>
				<form:input path="name" />
				<br />
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('name')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>

				<form:label path="password">Password:</form:label>
				<form:input type="password" path="password" />
				<br />
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>

				<form:label path="mailID">Email ID:</form:label>
				<form:input path="mailID" />
				<br />
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('email')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>

				<form:label path="contactNumber">Mobile #:</form:label>
				<form:input path="contactNumber" />
				<br />
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('mobile')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>


				<br />
				<form:label path="address">Address: </form:label>
				<form:input path="address" />
				<br />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('address')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />
					<input name="_eventId_submit" type="submit" class="btn btn-success" value="Submit" />
				<br />
			</form:form>
		</fieldset>
	</div>
	</div>
	</div>
</body>
</html><br><br>
 <%@ include file="/WEB-INF/views/footer.jsp" %>