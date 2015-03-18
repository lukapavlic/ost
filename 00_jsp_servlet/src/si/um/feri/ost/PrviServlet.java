package si.um.feri.ost;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/prvi")
public class PrviServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		PrintWriter out=res.getWriter();
		
		out.println("<!DOCTYPE html>");
		out.println("<html>");

		out.println("<head>");
		out.println("	<meta charset='UTF-8'>");
		out.println("	<title>Spletna stran</title>");
		out.println("</head>");

		out.println("<body>");
		out.println("	<h1>Spletna stran</h1>");
		out.println("	To je SERVLET.");
		out.println(req.getParameter("a"));
		out.println("</body>");

		out.println("</html>");

	}
	
}
