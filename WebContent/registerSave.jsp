<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!-- Pour introduire du code java dans un fichier JSP on utilise <%%> -->
<%
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

		// specify the fields to set, excluding the auto-increment one.
		// exemple : sql = "INSERT INTO tablename(someField, someOtherField, ...) VALUES(?,?,...)"
		PreparedStatement ps = con.prepareStatement("insert into users(nom, prenom, email, password) values(?, ?, ?, ?)");
		ps.setString(1, nom);
		ps.setString(2, prenom);
		ps.setString(3, email);
		ps.setString(4, password);

		int s = ps.executeUpdate(); //executeUpdate(String) utilisée si l'exécution du Statement retourne un nombre d'objets modifiés (cas des requête de création, d'effacement ou de mise à jour)
		if (s > 0) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Votre compte a bien été crée');");
			out.println("location='login_page.jsp';");
			out.println("</script>");
		} else {
			out.print("Sorry! Please fill correct detail and try again");
		}
	} catch (Exception e1) {
		e1.printStackTrace();
	}
%>