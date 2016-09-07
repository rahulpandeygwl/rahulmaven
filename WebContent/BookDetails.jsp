<%@page import="com.bookreview.entity.Book"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Details</title>

	<style type="text/css">
		div.logout{
			float: right;
			margin-right: 20px;
		}
	</style>
</head>
<body>

<div class="logout">
	<br/><br/>
		
	<a href='Logout.jsp'>Log Out</a><br/>
	
</div>
	<%Book book =  (Book)request.getAttribute("Book");
		out.append(book.getAuthor()+"   "+book.getTitle());
		%>
		
	<input type="button" value="Submit feedback">
</body>
</html>