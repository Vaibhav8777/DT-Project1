<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
 <%@ page isELIgnored="false" %>
<html>
<head>
<link rel="stylesheet" href="/ShoppingCart/resources/bootstrap/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="/ShoppingCart/resources/bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript" 
src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<title>Category Page</title>
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
<body style="background-color:white;">

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

<div class="container-fluid">
<div class="col-md-3">
  <div class="row-fluid">
   <div class="span12">
	<h2>Add a Category</h2>

	<c:url var="addAction" value="/category/add"></c:url>
	

	<form:form action="${addAction}" commandName="category">
		<table class="table table-condensed">
			<tr>
				<td><form:label path="id">
						<spring:message text="ID" />
					</form:label></td>
				<c:choose>
					<c:when test="${!empty category.id}">
						<td><form:input path="id" disabled="true" readonly="true"  />
						</td>
					</c:when>

					<c:otherwise>
						<td><form:input path="id" patttern =".{6,7}" required="true" title="id should contains 6 to 7 characters" /></td>
					</c:otherwise>
				</c:choose>
			<tr>
			<form:input path="id" hidden="true"  />
			<p style="color:red;">${idMessage}</p>
				<td><form:label path="name">
						<spring:message text="Name" />
					</form:label></td>
				<td><form:input path="name" required="true" /></td>
			</tr>
			<tr>
				<td><form:label path="description">
						<spring:message text="Description" />
					</form:label></td>
				<td><form:input path="description" required="true" /></td>
			</tr>
			<tr>
				<td colspan="2"><br/><c:if test="${!empty category.name}">
						<button class="btn btn-success" 
                                       onclick="location.href='${message}'">Edit Category</button> <!-- added bootstrap -->
					</c:if> <br/><c:if test="${empty category.name}">
					
				<button class="btn btn-success" 
                                       onclick="location.href='${message}'">Add Category</button><!-- added bootstrap -->
						
					</c:if></td>
			</tr>
		</table>
	</form:form>
	</div>
	</div>
	</div>
	</div>
	<br>
	<div class="container">
	<h2>Category List</h2>
	<c:if test="${!empty categoryList}">
		
                         
  <table class="table table-striped table-hover  table-condensed">
			<tr>
				<th width="80">Category ID</th>
				<th width="120">Category Name</th>
				<th width="120">Category Description</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
			</tr>
			<c:forEach items="${categoryList}" var="category">
				<tr>
					<td>${category.id}</td>
					<td>${category.name}</td>
					<td>${category.description}</td>
					<td><a href="<c:url value='category/edit/${category.id}' />"><button type="button" class="btn btn-primary">Edit</button></a></td> 
					<td><a href="<c:url value='category/remove/${category.id}' />"><button type="button" class="btn btn-danger">Delete</button></a></td> 
				</tr>
			</c:forEach>
		</table>

	</c:if>
	</div>
</body>
</html>
 <%@ include file="/WEB-INF/views/footer.jsp" %>