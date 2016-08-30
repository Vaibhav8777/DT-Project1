<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/ShoppingCart/resources/bootstrap/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="/ShoppingCart/resources/bootstrap/js/bootstrap.min.js"></script>
 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Dashboard</title>
<style>
body{
background-image: url(/ShoppingCart/resources/img/bg13.jpg);

}
h3 {
    color:white;
    font-family: "Times New Roman", Times, serif;
}


</style>
</head>
<body style="background-color:light white;">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" >Wheel Spin</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="onLoad"><span class="glyphicon glyphicon-home"></span></a></li>
      
     </ul>
      
      
	  
	  <ul class="nav navbar-nav navbar-right">
      
      
		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<li><a>Hello, ${pageContext.request.userPrincipal.name}</a></li>
			<li><a href="<c:url value="/j_spring_security_logout" />"><span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
		</c:if>
								
			
		
	  </ul>
  </div>
</nav>

<!-- csrt for log out-->
<%-- 	<form action="${logoutUrl}" method="post" id="logoutForm"> --%>
<!-- 	  <input type="hidden"  -->
<%-- 		name="${_csrf.parameterName}" --%>
<%-- 		value="${_csrf.token}" /> --%>
<!-- 	</form> -->

<h3>Welcome Admin </h3> <br><br>

<a href="categories"><button type="button" class="btn btn-info"><i>CATEGORIES</i></button></a>   
<a href="suppliers"> <button type="button" class="btn btn-info"><i>SUPPLIERS</i></button></a>   
<a href="products"> <button type="button" class="btn btn-info"><i>PRODUCTS</i></button></a>    

</body>
</html><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
 <%@ include file="/WEB-INF/views/footer.jsp" %>