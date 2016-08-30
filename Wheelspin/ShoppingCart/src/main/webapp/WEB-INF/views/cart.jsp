<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@page isELIgnored ="false" %>
<link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Cart</title>
<style>
 th{
    color:white;
    background-color: #8B0000;
}

body{
background-image: url(/ShoppingCart/resources/img/bg29.jpg);
background-size:     cover;                      
    background-repeat:   no-repeat;
}

table, th, td {
    border: 1px solid black;
}

h2{
color:black;
font-family: "Times New Roman", Times, serif;
}
/*  body{  */
/* background-image: url(/ShoppingCart/resources/img/white1.jpg);  */
/* background-size:     cover;                       */
/*     background-repeat:   no-repeat; */
/*  }  */


</style>
</head>

 <body style="background-color:white;">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" >Wheel Spin</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="onLoad"><span class="glyphicon glyphicon-home"></span></a></li>
	 
     </ul>
     <ul class="nav navbar-nav navbar-right">
      
      <li class="divider-vertical"></li>
		<c:if test="${pageContext.request.userPrincipal.name != null}">
			
			<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
				<li><a href="<c:url value="/myCart" />"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a>${cartSize}</li>
			</c:if>
			
			<c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
				<li><a href="<c:url value="/admin" />">View ALL</a></li>
			</c:if>
			
			<li><a>Hello, ${pageContext.request.userPrincipal.name}</a></li>
			<li><a href="<c:url value="/j_spring_security_logout" />"> <span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
		</c:if>
								
		<c:if test="${pageContext.request.userPrincipal.name  == null}">
			<li><a href="<c:url value="/loginUser" />"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			<li><a href="<c:url value="memberShip.obj" />"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
		</c:if>
      
      
<%--       <li><a href="<c:url value="/loginUser" />">Login</a></li> --%>
<%-- 			<li><a href="<c:url value="memberShip.obj" />">Sign Up</a></li> --%>
		
	</ul>
      
<!--       <li><a href="memberShip.obj"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li> -->
<!--       <li><a href="loginUser"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> -->
<%--       <li><a href="myCart"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a>${cartSize} </li> --%>
<!--     </ul> -->
      
  </div>
</nav>



 
 
 <div class="container-fluid">
	<h3>Your Cart</h3>
	<c:if test="${!empty cartList}">
		<table class="table table-condensed">
			<tr>
<!-- 				<th width="80">Cart ID</th> -->
				<th width="120">Product Name</th>
				<th width="120">Price</th>
				
				
				
				
				<th width="60">Delete</th>
				
			</tr>
			<c:forEach items="${cartList}" var="cart">
				<tr>
<%-- 					<td>${cart.id}</td> --%>
					<td>${cart.productName}</td>
					<td>${cart.price}</td>
				
					
					
					
					<td><a href="<c:url value='cart/remove/${cart.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		
	
	</c:if>
	</div>
	<a href="onLoad"><button type="button" class="btn btn-default">CONTINUE SHOPPING</button>
	</h4></a>
	
	
	<br>
	<br>
	<a href="checkout"><h4 style="color: #c19a6b "><button type="button" class="btn btn-default">Checkout and Pay</button>
	</h4></a>
	
</body>
</html><br><br><br><br><br><br><br><br><br><br><br>

<%@ include file="/WEB-INF/views/footer.jsp" %>
