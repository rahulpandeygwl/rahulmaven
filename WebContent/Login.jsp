<%@page import="com.bookreview.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>

	<style type="text/css">
		span{
		display:inline-block;
			padding: 5px;
			width:50px;
			position: relative;
			margin-left:15px;
			}
			
		fieldset {
			margin:auto;
			position:absolute;
			top:0;
			bottom:0;
			right:0;
			left:0; 
			width: 300px;
			height: 110px;
			padding: 20px;
			 
					}
	</style>
</head>
<body>
<% User.visitorCount++;
session.setAttribute("status", "loggedin");%>

	<fieldset>
	<legend>Login</legend>
		<form action="ValidateUser.jsp" method="get" >
		<div>
			<span>Username:</span><span><input type="text" name="username"></span><br/>
			<span>Password:</span><span><input type="password" name="password"></span><br/>
			
			<span></span><span><input type="submit" value="Submit"></span>
		</div>
		</form>
	</fieldset>
</body>
</html>