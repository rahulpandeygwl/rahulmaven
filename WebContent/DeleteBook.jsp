<%@page import="com.bookreview.entity.User"%>
<%@page import="com.bookreview.dao.BookOperations"%>
<%@page import="com.bookreview.entity.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
										out.append(ck[0].getValue()); %><br/>
		
	<a href='Logout.jsp'>Log Out</a><br/>
	
</div>
<h2 style="margin-left: 40%; margin-top: 10%;position: absolute;">Select books you want to delete</h2>
		<% List<Book> bookList=BookOperations.getBookList();
		
			request.setAttribute("bookList", bookList);%>
			
		
	<form action="Delete.jsp">
   <table border=1px cellspacing="0" cellpadding="3px"><tr><td></td><td>BookID</td><td>Title</td><td>Author</td></tr>
		
	<c:forEach var="book" items="${bookList}">
	<tr>
	<td><input type="checkbox" name ="book" value ="${book.getBookid()}"></td>
	<td> <c:out value="${book.getBookid()}"/> </td>
	<td><c:out value="${book.getTitle()}"/></td>
	<td><c:out value="${book.getAuthor()}"/></td>
	</tr>
	</c:forEach>
	</table>
			<button style="margin-top: 30%; margin-left: 45%;" type="submit" value="Delete Book(s)">Delete Book</button><br/>
	</form>
</body>
</html>