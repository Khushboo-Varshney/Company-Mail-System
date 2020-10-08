<%@ page import="java.sql.*" %>
<%          String To=request.getParameter("t1");
			String Subject=request.getParameter("t2");
			String Message=request.getParameter("t3");
			response.setContentType("text/html");
			//partRequest ref=new partRequest(request, "f:\\abc");
			//PrintWriter out=response.getWriter();
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test");
			//Connection con=DriverManager.getConnection("jdbc:mysql://localhost:8080/mysql");
			PreparedStatement psmt=con.prepareStatement("insert into email values(?,?,?)");
			psmt.setString(1, To);
			psmt.setString(2, Subject);
			psmt.setString(3, Message);
			int a=psmt.executeUpdate();
			if(a>0)
				out.println("<b><i>Email send successfully</i></b>");
			else
			{
				out.println("<b><i>Email send failed</i></b>");
%>
            <%@include file="Ademail.html" %>
<%
	}
%>
 <%
        String redirectURL = "http://localhost:8081/ComapnyMS/upload.html";
        response.sendRedirect(redirectURL);
    %>		