<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  uri="http://www.springframework.org/tags/form"  prefix="form"%>
<html>
<head>
<link rel="stylesheet" href="/ShoppingCart/resources/bootstrap/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="/ShoppingCart/resources/bootstrap/js/bootstrap.min.js"></script>
 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login User</title>
 <link rel="stylesheet" href="/ShoppingCart/resources/css/reset.css">

    
        <style>
      /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
      * {
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

body {
  background: #333;
  font: 100%/1 "Helvetica Neue", Arial, sans-serif;
}

.login {
  position: absolute;
  top: 50%;
  left: 50%;
  margin: -10rem 0 0 -10rem;
  width: 20rem;
  height: 20rem;
  padding: 20px;
  background: #fff;
  border-radius: 5px;
  overflow: hidden;
}
.login:hover > .login-header, .login.focused > .login-header {
  width: 2rem;
}
.login:hover > .login-header > .text, .login.focused > .login-header > .text {
  font-size: 1rem;
  transform: rotate(-90deg);
}
.login.loading > .login-header {
  width: 20rem;
}
.login.loading > .login-header > .text {
  display: none;
}
.login.loading > .login-header > .loader {
  display: block;
}

.login-header {
  position: absolute;
  left: 0;
  top: 0;
  z-index: 1;
  width: 20rem;
  height: 20rem;
  background: #FF7F50;
  transition: width 0.5s ease-in-out;
}
.login-header > .text {
  display: block;
  width: 100%;
  height: 100%;
  font-size: 5rem;
  text-align: center;
  line-height: 20rem;
  color: #fff;
  transition: all 0.5s ease-in-out;
}
.login-header > .loader {
  display: none;
  position: absolute;
  left: 5rem;
  top: 5rem;
  width: 10rem;
  height: 10rem;
  border: 2px solid #fff;
  border-radius: 50%;
  animation: loading 2s linear infinite;
}
.login-header > .loader:after {
  content: "";
  position: absolute;
  left: 4.5rem;
  top: -0.5rem;
  width: 1rem;
  height: 1rem;
  background: #fff;
  border-radius: 50%;
  border-right: 2px solid orange;
}
.login-header > .loader:before {
  content: "";
  position: absolute;
  left: 4rem;
  top: -0.5rem;
  width: 0;
  height: 0;
  border-right: 1rem solid #fff;
  border-top: 0.5rem solid transparent;
  border-bottom: 0.5rem solid transparent;
}


.login-form {
  margin: 0 0 0 2rem;
  padding: 0.5rem;
}

.login-input {
  display: block;
  width: 100%;
  font-size: 2rem;
  padding: 0.5rem 1rem;
  box-shadow: none;
  border-color: #ccc;
  border-width: 0 0 2px 0;
}
.login-input + .login-input {
  margin: 10px 0 0;
}
.login-input:focus {
  outline: none;
  border-bottom-color: orange;
}

.login-btn {
  position: absolute;
  right: 1rem;
  bottom: 1rem;
  width: 5rem;
  height: 5rem;
  border: none;
  background: orange;
  border-radius: 50%;
  font-size: 0;
  border: 0.6rem solid transparent;
  transition: all 0.3s ease-in-out;
}
.login-btn:after {
  content: "";
  position: absolute;
  left: 1rem;
  top: 0.8rem;
  width: 0;
  height: 0;
  border-left: 2.4rem solid #fff;
  border-top: 1.2rem solid transparent;
  border-bottom: 1.2rem solid transparent;
  transition: border 0.3s ease-in-out 0s;
}
.login-btn:hover, .login-btn:focus, .login-btn:active {
  background: #fff;
  border-color: orange;
  outline: none;
}
.login-btn:hover:after, .login-btn:focus:after, .login-btn:active:after {
  border-left-color: orange;
}
body{
background-image: url(/ShoppingCart/resources/img/bg12.jpg);

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
<div class="login">
<header class="login-header"><span class="text">LOGIN</span><span class="loader"></span></header>

	<form name="loginForm" action="<c:url value='j_spring_security_check' />" method="post">
                <c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000;">${error}</div>
                </c:if>
                <div class="span9 center">
                   	<c:if test="${not empty msg}">
                 		<div class="msg">${msg} <br><br></div>
            		</c:if>
                	<input type="text" placeholder="Username" name="username" class="login-input"/>
					<input type="password" placeholder="Password"  name="password" class="login-input"/>
					<div class="span8 center">
                		<button type="submit" class="login-btn">login</button>
<%-- 						<a href="<spring:url value="onLoad" />" class="btn btn-danger">Cancel</a> --%>
					</div>
				</div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            </form>
            
</div>
</div>
    

       
</body>
</html>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
 <%@ include file="/WEB-INF/views/footer.jsp" %>