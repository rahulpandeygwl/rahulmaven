<%@page import="com.bookreview.entity.User"%>
<%@page import="java.util.List"%>
<%@page import="com.bookreview.dao.BookOperations"%>
<%@page import="com.bookreview.entity.Book"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book List</title>
<style type="text/css">
	table {
			margin:auto;
			position:absolute;
			top:0;
			bottom:0;
			right:0;
			left:0; 
			padding: 20px;
			margin-top: 15%; 
			
					}
	div.visitors{
			float: right;
			margin-right: 20px;
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
	<% List<Book> bookList=BookOperations.getBookList();
		
			request.setAttribute("bookList", bookList);%>
	<h2 style="margin-left: 45%; margin-top: 10%;">Book Details</h2>
	<table border="1" cellspacing="0" cellpadding="3px">
	
	<tr>
	<td>Book Id</td>
	<td>Book Title</td>
	<td>Book Author</td>
	</tr>
	
		<c:forEach var="book" items="${bookList}">
		<br/>
		
	<tr>
	<td> <c:out value="${book.getBookid()}"/> </td>
	<td><c:out value="${book.getTitle()}"/></td>
	<td><c:out value="${book.getAuthor()}"/></td>
	</tr>
	</c:forEach>
	</table>
</body>
</html>