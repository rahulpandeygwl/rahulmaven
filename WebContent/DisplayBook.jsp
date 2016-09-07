<%@page import="com.bookreview.entity.BookReview"%>
<%@page import="java.util.List"%>
<%@page import="com.bookreview.entity.Book"%>
<%@page import="com.bookreview.dao.BookOperations"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
     
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
		
		fieldset {
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
					
		span{
				padding-left: 10px;
			}
</style>
</head>
<body>

	<div class="logout">
	<br/><br/>
		
	<a href='Logout.jsp'>Log Out</a><br/>
	
</div>
	
	<%
		Book book = BookOperations.searchBook(request.getParameter("bookTitle"));
		request.setAttribute("book", book);
		%>
		<%
		List<BookReview> reviews = BookOperations.fetchReview(book.getBookid());
		request.setAttribute("reviews", reviews);
		%>
		
		<div style="margin-left: 40%;margin-top: 5%; ">
			<span><c:out value="${book.getTitle()}"/></span>
			<span><c:out value="${book.getAuthor() }"/></span>
		</div>
		<br/>
	
	
		<table cellpadding="3px" cellspacing="0" style="margin-left: 40%;margin-top: 5%; ">
		<c:forEach var="review" items="${reviews }">
			<tr>
				<td>
					<c:out value="${review.getUsername()}"/>
				</td>
				<td>
					<c:out value="${review.getReviewtext()}"/>
				</td>
			</tr>
		</c:forEach>
		</table>
		
	<fieldset>
	<legend>Add Review</legend>
	<form action="DisplayBook.jsp">
	<div>
		<span><input type="text" name="review"></span>
		<input type="hidden" name="bookTitle" value="${param.bookTitle }">
		<br/>
		<br/>
		<span><input type="submit" value="Submit review"></span>
	</div>
	</form>
	</fieldset>
	<sql:setDataSource var="bookDS" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/bookdb" user="root" password="admin"/>
		
		<c:if test="${not empty param.review }">
			<sql:query var="reviewid" dataSource="${bookDS }">
			SELECT max(reviewid+1) id from bookreview;
		</sql:query>
		
			<c:forEach var="row" items="${reviewid.rows }">
			<c:set var="rId" value="${row.id }"/>
			
			</c:forEach>
			<sql:update dataSource="${bookDS }">
				INSERT INTO bookreview values(?,?,?,?)
				<sql:param value="${rId}"/>
				<sql:param value="${book.getBookid()}"/>
				<sql:param value='<%= session.getAttribute("currentUser") %>'/>
				<sql:param value="${param.review }"/>
			</sql:update>
		</c:if>
		
		<c:if test="${not empty param.review }">
		<jsp:forward page="SearchBook.jsp"></jsp:forward>
	</c:if>
	
</body>
</html>