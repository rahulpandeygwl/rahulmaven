
<%@page import="com.bookreview.dao.BookOperations"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% String[] bookIds = request.getParameterValues("book");
	
		for(int i=0;i<bookIds.length;i++)
			{
				BookOperations.deleteBookEntry(Integer.parseInt(bookIds[i]));
			}
	%>
	<jsp:forward page="adminpage.jsp"></jsp:forward>
</body>
</html>