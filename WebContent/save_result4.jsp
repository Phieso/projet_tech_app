<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	float i_veille4 = Float.parseFloat(request.getParameter("i_veille4"));
	float result4 = Float.parseFloat(request.getParameter("result4"));

	try {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://mydbinstance.cnow1puis8rs.eu-west-3.rds.amazonaws.com:8889/app_titre_pro";
		String user = "phieso";
		String pwd = "hccspv21952";
		//String url = "jdbc:mysql://localhost:8889/app_titre_pro";
		//String user = "root";
		//String pwd = "root";
		Connection con = DriverManager.getConnection(url, user, pwd);
		PreparedStatement ps = con
				.prepareStatement("insert into results(id_user, system, i_veille, result) values(?, ?, ?, ?)");
		ps.setInt(1, id);
		ps.setString(2, "AES 230V pour UAE");
		ps.setFloat(3, i_veille4);
		ps.setFloat(4, result4);

		int s = ps.executeUpdate();
		if (s > 0) {

			out.println("<script type=\"text/javascript\">");
			out.println("alert('Le résultat a bien été sauvegardé');");
			out.println("location='system4_page.jsp';");
			out.println("</script>");
		} else {
			out.print("Désolé ! Veuillez remplir tous les champs et réessayer.");
		}
	} catch (Exception e1) {
		e1.printStackTrace();
	}
%>