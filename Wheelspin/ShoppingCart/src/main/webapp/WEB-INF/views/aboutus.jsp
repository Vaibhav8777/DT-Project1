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
 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About Us</title>

<style>
body{
background-image: url(/ShoppingCart/resources/img/white.jpg);
background-size:     cover;                      
    background-repeat:   no-repeat;
}
p{
color:black;
font-family: "Times New Roman", Times, serif;
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
      <li class="active"><a href="aboutus">About Us</a></li>
      
     </ul>

      
  </div>
</nav>
<div class="container">            
  <img src="<c:url value="/resources/img/duster.jpg"/>" class="img-rounded" alt="" width="350" height="250"> 
</div>
<br/>
<h4>
<p>Wheel Spin is one of the most experienced and established Licensed Automobile dealer & exporter  in India. We have secured our name among the most reliable and well known car exporters in the Country.</p> 

<p>We export vehicles worldwide, including England, Ireland, New Zealand, Australia, Fiji, Mauritius, Hong Kong, Singapore, Malaysia, UAE, Pakistan, Jamaica, Bahamas, Barbados, Kenya, Tanzania, Bangladesh and Russia, Iran, Iraq, etc.</p>

<p>We can provide almost any kind of vehicle that you are looking for: Sedans, sports cars, commercial vehicles, Japanese as well as American and European make. We can provide both right hand and left hand drive vehicles. Ordering is extremely easy, you can order vehicles by going to our website or you can contact us through phone. We offer you the best rates and we take the hassle out of ordering. We take care of all the details for you, including shipping and documentation</p>

</h4>
</body>
</html>

<br><br>
 <%@ include file="/WEB-INF/views/footer.jsp" %>

