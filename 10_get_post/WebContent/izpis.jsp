<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Prikaz podatkov</title>
	</head>
	
	<body>
		<h1>Prikaz podatkov</h1>
		
		<a href="vnos.jsp">Ponoven vnos</a>
		
		<hr/>
		
		<table>
			<tr>
				<td>Ime:</td>
				<td><%=request.getParameter("ime")%></td>
			</tr>
			<tr>
				<td>Priimek:</td>
				<td><%=request.getParameter("priimek")%></td>
			</tr>
		</table>
		
		<%
			//shranjevanje podatkov v piškotke
			response.addCookie(new Cookie("cime",request.getParameter("ime")));
			response.addCookie(new Cookie("cpriimek",request.getParameter("priimek")));
		%>
		
	</body>
	
</html>