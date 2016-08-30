<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
    <%@page isELIgnored ="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<link rel="stylesheet" href="/ShoppingCart/resources/bootstrap/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="/ShoppingCart/resources/bootstrap/js/bootstrap.min.js"></script>
 
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WheelSpin | Online Market for Cars</title>
 <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width:640px;
       height:360px;
      margin: auto;
  }
/*   .navbar{ */
  
/*    background-color:#87CEEB;  */
/*   } */
  
  body{
background-image: url(/ShoppingCart/resources/img/white6.jpg);
background-size:     cover;                      
    background-repeat:   no-repeat;
}
dropdown:hover {
	background-color: #0186ba;
	background-image: linear-gradient(#04acec, #0186ba);
}

h3{
color:black;
font-family: "Times New Roman", Times, serif;
}
  </style>

</head>
<body>

<!-- Navigation Bar Begins -->
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" >Wheel Spin</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="onLoad"><span class="glyphicon glyphicon-home"></span></a></li>
	  <c:forEach items="${categoryList}" var="category">
                        <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href=${category.name}>${category.name}
                        <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                        <c:forEach items="${category.products}" var="product">
                       <li><a href="<c:url value='product/get/${product.id}' />">${product.name}</a></li>
                       
                        
                        </c:forEach>
                        </ul></li></c:forEach>
      
      <li><a href="aboutus">About Us</a></li>
      <li><a href="contact">Contact Us</a></li>
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

<!-- Navigation Bar Ends -->

<!-- Container for Product Description -->

<div style="background-color:#FFFFF0;">
		<c:if test="${!empty selectedProduct.name}">
			<table>
				<tr>
<!-- 					<th align="left" width="80">Product ID</th> -->
					<th align="left" width="120">Product Name</th>
					<th align="left" width="200">Product Description</th>
					<th align="left" width="80">Price</th>
					<th align="left" width="200">Product Category</th>
					<th align="left" width="200">Product Supplier</th>
					<th align="left" width="200">ADD TO CART</th>
				</tr>
				<tr>
<%-- 					<td align="left" >${selectedProduct.id}</td> --%>
					<td align="left" >${selectedProduct.name}</td>
					<td align="left" >${selectedProduct.description}</td>
					<td align="left" >${selectedProduct.price}</td>
					<td align="left" >${selectedProduct.category.name}</td>
					<td align="left" >${selectedProduct.supplier.name}</td>
					<td><a href="<c:url value='cart/add/${selectedProduct.id}' />"><button type="button" class="btn btn-warning">Add to Cart</button></a></td>
				</tr>
			</table>
		</c:if>
	</div>
	
	<div>
	</div>
	
<!-- End Of Product Description -->	

<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="<c:url value="/resources/img/santafe.jpg"/>" alt="car1" >
    </div>

    <div class="item">
      <img src="<c:url value="/resources/img/benza45.jpg"/>" alt="car2">
    </div>

    <div class="item">
      <img src="<c:url value="/resources/img/audia3.jpg"/>" alt="car3" >
    </div>


  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
 
  <!-- Controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div> <!-- Carousel -->

<br/>

<!-- Grid Image Container -->
<div class="container">
  <div class="row"><h3><u>Upcoming Cars</u></h3>
    <div class="col-md-3 " >
     <a class="thumbnail" href="/ShoppingCart/resources/img/corolla.jpg">
     <img class="img-responsive" src="<c:url value="/resources/img/corolla.jpg"/>"width="460" height="345" alt="car5"></a>
    </div>
    <div class="col-md-3">
     <a class="thumbnail" href="/ShoppingCart/resources/img/audia3h2.jpg">
     <img class="img-responsive" src="<c:url value="/resources/img/audia3h2.jpg"/>" alt="car6"></a>
    </div>
    <div class="col-md-3">
     <a class="thumbnail" href="/ShoppingCart/resources/img/audia4.jpg">
     <img class="img-responsive" src="<c:url value="/resources/img/audia4.jpg"/>" width="460" height="345" alt="car7"></a>
    </div>
    <div class="col-md-3">
     <a class="thumbnail" href="/ShoppingCart/resources/img/bmwx1.jpg">
     <img class="img-responsive" src="<c:url value="/resources/img/bmwx1.jpg"/>" width="460" height="300" alt="car7"></a>
    </div>
  </div>
</div>

<!-- Grid image container ends -->

<!-- Display Cart Info -->
<div id ="displayCart" style="background-color:#FFFAFA;">
	<c:if test="${displayCart==true}">
	       
			<table>
				<tr>
<!-- 					<th align="left" width="80">Cart ID</th> -->
					<th align="left" width="120">Product Name</th>
					<th align="left" width="200">Quantity</th>
					<th align="left" width="80">Price</th>
					<th align="left" width="60">Delete from Cart</th>

				</tr>
				<c:forEach items="${cartList}" var="cart">
<!-- 				<tr> -->
<%-- <%-- 					<td align="left" >${cart.id}</td> --%> --%>
<%-- 					<td align="left" >${cart.productName}</td> --%>
<%-- 					<td align="left" >${cart.quantity}</td> --%>
<%-- 					<td align="left" >${cart.price}</td> --%>
<!-- <!-- 					<td align="left" ><a --> -->
<%-- <%-- 						href="<c:url value='/cart/remove/${cart.id}'  />">Delete</a></td> --%> --%>
<!-- 						<td align="left" ><a -->
<%-- 						href="<c:url value='/pay' />"><button type="button" class="btn btn-warning">Proceed to Pay</button></a> </td> --%>
<!-- 				</tr> -->
				</c:forEach>
					
			</table>
			
<%-- 			<h2>  Total cost : ${totalAmount}</h2> --%>
			<%-- <a href="<c:url value='/pay/${cart.userID}'/>">Proceed</a>  --%> 
			
		</c:if>
	
	
	
	</div>
<br/>
<br/>
<!--  <div class="news-letter"> -->
<!-- 		<div class="container"> -->
<!-- <!-- 			<div class="cards text-center"> --> 
<%-- <%-- 				<img src="<c:url value="/resources/img/cards.jpg"/>" alt="" /> --%> 
<!-- <!-- 			</div> --> 
<!-- 			<div class="copyright text-center"><br/> -->
<!-- 				<p>© 2016 WheelSpin. All Rights Reserved</p> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->


 
</body>
</html>
<%@ include file="/WEB-INF/views/footer.jsp" %>
