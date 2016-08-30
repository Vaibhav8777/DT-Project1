<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page isELIgnored="false" %>
<html ng-app>
<head>
<link rel="stylesheet" href="/ShoppingCart/resources/bootstrap/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="/ShoppingCart/resources/bootstrap/js/bootstrap.min.js"></script>



<title>Product Page</title>
<style>
 th{
    color: light blue;
    background-color: #B0E0E6;
}

table, th, td {
    border: 2px solid black;
}

h2{
color:black;
font-family: "Times New Roman", Times, serif;
}
 body{ 
background-image: url(/ShoppingCart/resources/img/bg20.jpg); 
background-size:     cover;                      
    background-repeat:   no-repeat;
 }
</style>
</head>
<body style="background-color:bright white;">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" >Wheel Spin</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="admin"><span class="glyphicon glyphicon-home"></span></a></li>
    
     </ul>
     
      
  </div>
</nav>
<div class="container">
<div class="col-md-3">
  
	<h2>Add a Product</h2>

	<c:url var="addAction" value="/product/add"></c:url>

	<form:form action="${addAction}" commandName="product">
		<table class="table table-condensed">
			<tr>
				<td><form:label path="id">
						<spring:message text="ID" />
					</form:label></td>
				<c:choose>
					<c:when test="${!empty product.id}">
						<td><form:input path="id" disabled="true" readonly="true" />
						</td>
					</c:when>

					<c:otherwise>
						<td><form:input path="id" patttern =".{6,7}" required="true" 
						title="id should contains 6 to 7 characters" /></td>
					</c:otherwise>
				</c:choose>
			<tr>
			<form:input path="id" hidden="true"  />
				<td><form:label path="name">
						<spring:message text="Name" />
					</form:label></td>
				<td><form:input path="name" required="true" /></td>
			</tr>
			
			
			<tr>
				<td><form:label path="price">
						<spring:message text="Price" />
					</form:label></td>
				<td><form:input path="price" required="true" /></td>
			</tr>
			
			<tr>
				<td><form:label path="description">
						<spring:message text="Description" />
					</form:label></td>
				<td><form:input path="description" required="true" /></td>
			</tr>
			
			<tr>
				<td><form:label path="supplier">
						<spring:message text="Supplier" />
					</form:label></td>
				<%-- <td><form:input path="supplier.name" required="true" /></td> --%>
				 <td><form:select path="supplier.name" items="${supplierList}" itemValue="name" itemLabel="name" /></td>
			</tr>
			<tr>
				<td><form:label path="category">
						<spring:message text="Category" />
					</form:label></td>
				<%-- <td><form:input path="category.name" required="true" /></td> --%>
				<td><form:select path="category.name" items="${categoryList}" itemValue="name" itemLabel="name" /></td>
			</tr>
			<tr>
				<td colspan="2"><br/><c:if test="${!empty product.name}">
						<button class="btn btn-success" 
                                       onclick="location.href='${message}'">Edit Product</button>
					</c:if><br/> <c:if test="${empty product.name}">
						<button class="btn btn-success" 
                                       onclick="location.href='${message}'">Add Product</button>
					</c:if></td>
			</tr>
		</table>
	</form:form>
	</div>
	</div>
	<br>
	<div class="container">
	<h2>Product List</h2>
	<c:if test="${!empty productList}">
		<table class="table table-striped table-hover table-condensed">
			<tr>
				<th width="80">Product ID</th>
				<th width="120">Product Name</th>
				<th width="200">Product Description</th>
				<th width="80">Price</th>
				<th width="80">Product Category</th>
				<th width="80">Product Supplier</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
			</tr>
			<c:forEach items="${productList}" var="product">
				<tr>
					<td>${product.id}</td>
					<td>${product.name}</td>
					<td>${product.description}</td>
					<td>${product.price}</td>
					<td>${product.category.name}</td>
					<td>${product.supplier.name}</td>
					<td><a href="<c:url value='product/edit/${product.id}' />"><button type="button" class="btn btn-primary">Edit</button></a></td>
					<td><a href="<c:url value='product/remove/${product.id}' />"><button type="button" class="btn btn-danger">Delete</button></a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	</div>
	
	
</body>
</html>
 <%@ include file="/WEB-INF/views/footer.jsp" %>