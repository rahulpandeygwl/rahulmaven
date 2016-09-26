<%@page import="com.bookreview.entity.User"%>
<%@page import="com.bookreview.dao.BookOperations"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

	<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
	    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="user" class="com.bookreview.entity.User"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>


<% if( BookOperations.validateUser(user))
{
	String str = User.loggedin.getValue();
	int logged = Integer.parseInt(str);
	logged++;
	User.loggedin.setValue(String.valueOf(logged));
	
	response.addCookie(User.loggedin);//
	
	session.setAttribute("currentUser", user.getUsername());
	if(user.getUsername().equals("admin"))
		response.sendRedirect("Admin.jsp");
	else
		response.sendRedirect("SearchBook.jsp");
		
}
else
	response.getWriter().append("Invalid Username or Password!<a href='Login.jsp'>Click here to go back</a>");
	
%>
</body>
</html>