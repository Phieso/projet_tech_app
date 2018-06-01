<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	String nom = request.getParameter("nom");
	String prenom = request.getParameter("prenom");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
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
				.prepareStatement("update users set nom=?, prenom=?, email=?, password=? where id_user=" + id);
		ps.setString(1, nom);
		ps.setString(2, prenom);
		ps.setString(3, email);
		ps.setString(4, password);
		session.setAttribute("nom", nom);
		session.setAttribute("prenom", prenom);
		session.setAttribute("email", email);
		session.setAttribute("password", password);
		int s = ps.executeUpdate();
		if (s > 0) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Vos informations ont bien été modifiées');");
			out.println("location='profile.jsp';");
			out.println("</script>");
		} else {
			out.print("Une erreur s'est produite durant l'enregistrement.");
		}
	} catch (Exception e1) {
		e1.printStackTrace();
	}
%>


