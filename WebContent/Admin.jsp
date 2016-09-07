<%@page import="com.bookreview.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>

	<style type="text/css">
		div.visitors{
			float: right;
			margin-right: 20px;
		}
		
		div.options{
			margin:auto;
			position:absolute;
			top:0;
			bottom:0;
			right:0;
			left:0; 
			width: 750px;
			height: 110px;
			padding: 20px; 
		}
		
		a{
			font-size: 30px;
			}
	</style>
</head>
<body>

<div class="visitors">
	<br/>No of visitors = <%out.println(User.visitorCount); %><br/>
			No of users logged in = <%Cookie ck [] = request.getCookies();
										out.println(ck[1].getValue());%><br/>
		
	<a href='Logout.jsp'>Log Out</a><br/>
	
</div>

	<div class="options">
	<a href="DisplayBooks.jsp" style="padding-left: 30px;">Display Books</a>
	<a href='InsertBook.jsp' style="padding-left: 30px;">Insert Book</a>
	<a href='DeleteBook.jsp' style="padding-left: 30px;">Delete Book</a>
	<a href='Logs.jsp' style="padding-left: 30px;">View Logs</a>
	</div>
</body>
</html>