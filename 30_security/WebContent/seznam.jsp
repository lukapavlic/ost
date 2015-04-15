<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="si.um.feri.ost.Oseba"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Vnos podatkov</title>
	</head>
	
	<body>
		<h1>Seznam podatkov</h1>
		
		<a href="index.jsp">Domov</a> |
		<a href="vnos.jsp">Dodajanje</a>
		<% 
			List<Oseba> sez=null;
			if(session.getAttribute("seznam")!=null) {
				sez=(List<Oseba>)session.getAttribute("seznam");
			} else {
				sez=new ArrayList<Oseba>();
				session.setAttribute("seznam", sez);
			}
		%>
		
		<% 
			if (request.getParameter("vnos")!=null) {
				Oseba o=new Oseba(request.getParameter("ime"),request.getParameter("priimek"));
				sez.add(o);
			}
		%>

		<% 
			if (request.getParameter("izbrisi")!=null) {
				long id=Long.parseLong(request.getParameter("izbrisi"));
				int index=-1;
				for (int i=0;i<sez.size();i++) {
					if (sez.get(i).getId() == id) index=i;
				}
				if (index>=0)sez.remove(index);
			}
		%>		
		<ul>
			<% for (Oseba o :sez) { %>
				<li>
					<%=o%>
					<a href="seznam.jsp?izbrisi=<%=o.getId()%>">briši</a>
				</li>
			<% } %>
		</ul>
	
	</body>
	
</html>