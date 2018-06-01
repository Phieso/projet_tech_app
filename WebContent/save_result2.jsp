<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
	int id = Integer.parseInt(request.getParameter("id"));
	float i_veille2 = Float.parseFloat(request.getParameter("i_veille2"));
	float i_alarme2 = Float.parseFloat(request.getParameter("i_alarme2"));
	float result2 = Float.parseFloat(request.getParameter("result2"));

	try {
		Class.forName("com.mysql.jdbc.Driver");

		String url = "jdbc:mysql://mydbinstance.cnow1puis8rs.eu-west-3.rds.amazonaws.com:8889/app_titre_pro";
		String user = "phieso";
		String pwd = "hccspv21952";

		//String url = "jdbc:mysql://localhost:8889/app_titre_pro";
		//String user = "root";
		//String pwd = "root";

		Connection con = DriverManager.getConnection(url, user, pwd);

		PreparedStatement ps = con.prepareStatement(
				"insert into results(id_user, system, i_veille, i_alarme, result) values(?, ?, ?, ?, ?)");
		ps.setInt(1, id);
		ps.setString(2, "SMSI sans delestage - AES");
		ps.setFloat(3, i_veille2);
		ps.setFloat(4, i_alarme2);
		ps.setFloat(5, result2);

		int s = ps.executeUpdate();

		if (s > 0) {

			out.println("<script type=\"text/javascript\">");
			out.println("alert('Le résultat a bien été sauvegardé');");
			out.println("location='system2_page.jsp';");
			out.println("</script>");

		} else {
			out.print("Une erreur est survenue");
		}
	} catch (Exception e1) {
		e1.printStackTrace();
	}
%>
