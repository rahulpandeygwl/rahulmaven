<%@page import="com.bookreview.entity.User"%>
<%@page import="com.bookreview.dao.BookOperations"%>
<%@page import="com.bookreview.entity.Book"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

div.visitors{
			float: right;
			margin-right: 20px;
		}

		span{
		display:inline-block;
			padding: 5px;
			width:100px;
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
			height: 150px;
			padding: 20px; 
					}
	
</style>
</head>
<body>
<div class="visitors">
	<br/>No of visitors = <%out.println(User.visitorCount); %><br/>
			No of users logged in = <%
										Cookie ck [] = request.getCookies();
										out.println(ck[1].getValue());
										%><br/>
		
	<a href='Logout.jsp'>Log Out</a><br/>
	
</div>
<fieldset>
<form action="InsertBook.jsp">
<div>
	<span>Book Id:</span><span> <input type="text" name="bookid" id="1"></span><br/>
	<span>Book Name:</span><span><input type="text" name="bname" id="2"></span><br/>
	<span>Book Author:</span><span><input type="text" name="author" id="3"></span><br/><br/>
	<span></span><span><input type="submit"  value="Insert Book"></span>
 </div>
</form>
</fieldset>
<sql:setDataSource var="bookDS" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/bookdb" user="root" password="admin"/>
		
		<c:choose>
			<c:when test="${not empty param.bookid
								&& not empty param.bname
								&& not empty param.author}">
			<sql:update dataSource="${bookDS }">
				INSERT INTO bookinfo values(?,?,?)
				<sql:param value="${param.bookid }"/>
				<sql:param value="${param.bname }"/>
				<sql:param value="${param.author }"/>
			</sql:update>					
			</c:when>
		</c:choose>
		<c:if test="${not empty param.bookid}">
	<jsp:forward page="Admin.jsp"></jsp:forward>
	</c:if>

</body>



</html>

