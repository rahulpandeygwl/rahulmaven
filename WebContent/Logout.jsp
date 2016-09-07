<%@page import="com.bookreview.entity.User"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	
	Cookie ck [] = request.getCookies(); 
	String str = ck[1].getValue();
	int logged = Integer.parseInt(str);
	
	if(session.getAttribute("status")!=null)
		{
			System.out.println(session.getAttribute("status"));
			logged--;
			ck[1].setValue(String.valueOf(logged));
			response.addCookie(ck[1]);
			session.invalidate();
		}
	
	
	%>
	
	<h2 style="margin-left: 40%; margin-top: 10%;position: absolute;">
	
	Thank you for stopping by!<br/>
	<a href=Login.jsp>Login again</a>
	</h2>
</body>
</html>