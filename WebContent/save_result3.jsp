
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
	try {

		int id = Integer.parseInt(request.getParameter("id"));
		float i_veille3 = Float.parseFloat(request.getParameter("i_veille3"));
		float i_alarme3 = Float.parseFloat(request.getParameter("i_alarme3"));
		float i_delestage3 = Float.parseFloat(request.getParameter("i_delestage3"));
		float t_delestage3 = Float.parseFloat(request.getParameter("t_delestage3"));
		float result3 = Float.parseFloat(request.getParameter("result3"));

		Class.forName("com.mysql.jdbc.Driver");

		String url = "jdbc:mysql://mydbinstance.cnow1puis8rs.eu-west-3.rds.amazonaws.com:8889/app_titre_pro";
		String user = "phieso";
		String pwd = "hccspv21952";

		//String url = "jdbc:mysql://localhost:8889/app_titre_pro";
		//String user = "root";
		//String pwd = "root";

		Connection con = DriverManager.getConnection(url, user, pwd);

		PreparedStatement ps = con.prepareStatement(
				"insert into results(id_user, system, i_veille, i_alarme, i_delestage, t_delestage, result) values(?, ?, ?, ?, ?, ?, ?)");
		ps.setInt(1, id);
		ps.setString(2, "SMSI avec delestage");
		ps.setFloat(3, i_veille3);
		ps.setFloat(4, i_alarme3);
		ps.setFloat(5, i_delestage3);
		ps.setFloat(6, t_delestage3);
		ps.setFloat(7, result3);

		int s = ps.executeUpdate();

		if (s > 0) {

			out.println("<script type=\"text/javascript\">");
			out.println("alert('Le résultat a bien été sauvegardé');");
			out.println("location='system3_page.jsp';");
			out.println("</script>");
		} else {
			out.print("Désolé ! Veuillez remplir tous les champs et réessayer.");
		}
	} catch (Exception e1) {
		e1.printStackTrace();
	}
%>