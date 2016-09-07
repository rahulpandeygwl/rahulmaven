<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

div.logout{
			float: right;
			margin-right: 20px;
		}
		
div.book{
		margin:auto;
			position:absolute;
			top:0;
			bottom:0;
			right:0;
			left:0; 
			width: 300px;
			height: 100px;
			padding: 20px; 
		}
</style>
</head>
<body>

<div class="logout">
	<br/><br/>
		
	<a href='Logout.jsp'>Log Out</a><br/>
	
</div>
	<form action="DisplayBook.jsp">
	<div class="book">
	Enter book title: <input type="text" name="bookTitle" value="wings of fire">
	<br/>
	<input type="submit" value="Search" style="margin-left: 40%; margin-top: 10%;">
	</div>
	
	
	</form>
	
</body>
</html>