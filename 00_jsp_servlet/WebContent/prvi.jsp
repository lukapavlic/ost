<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Moj prvi JSP</title>
	</head>
	
	<body>
		<h1>Moj prvi JSP</h1>
		
		Testiram JSP.
		
		<%
			int i=1;
			int j=2;
			out.print("i + j =" + (i+j));
		%>
		<hr/>
		
		<% out.print(i+j); %>
		
		<%= i+j %>
		
		<hr/>
		
		<%= request.getParameter("ime") %>
	
	</body>
	
</html>