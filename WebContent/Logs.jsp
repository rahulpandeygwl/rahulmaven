<%@page import="com.bookreview.entity.User"%>
<%@page import="com.bookreview.entity.Log"%>
<%@page import="java.util.List"%>
<%@page import="com.bookreview.dao.BookOperations"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logs</title>
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
	<% List<Log> logList=BookOperations.fetchLogs();
		
			request.setAttribute("logList", logList);%>
	
		<h2 style="margin-left: 45%; margin-top: 10%;">Log Details</h2>
	<table border="1" cellspacing="0" cellpadding="3px">
	
	<tr>
		<td>Username</td>
		<td>Login Time</td>
	
	</tr>
	
		<c:forEach var="log" items="${logList}">
		<br/>
		
	<tr>
	<td> <c:out value="${log.getUsername()}"/> </td>
	<td><c:out value="${log.getTimestamp()}"/></td>
	</tr>
	</c:forEach>
	</table>
</body>
</html>