<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Osebe</title>
	</head>
	
	<%
		if(request.getParameter("odjava")!=null) {
			session.invalidate();
			response.sendRedirect("index.jsp");
		}
	%>
	
	<body>
		<h1>Izberite stran</h1>
		
		<a href="seznam.jsp">Seznam</a><br/>
		<a href="vnos.jsp">Vnos</a>
		
		<% if(request.getRemoteUser()!=null) { %>
			<hr/>
			Prijavljeni kot: <%=request.getRemoteUser()%> <br/>
			<a href="index.jsp?odjava">Odjava</a>
		<% } %>
		
	</body>
	
</html>