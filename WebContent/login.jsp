<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
	try {

		String email = request.getParameter("email");
		String password = request.getParameter("password");
		int dbId;
		String dbNom = null;
		String dbPrenom = null;
		String dbEmail = null;
		String dbPassword = null;

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
		PreparedStatement ps = con.prepareStatement("select * from users where email=? and password=?");
		ps.setString(1, email);
		ps.setString(2, password);

		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			dbId = rs.getInt(1);
			dbNom = rs.getString(2);
			dbPrenom = rs.getString(3);
			dbEmail = rs.getString(4);
			dbPassword = rs.getString("password");

			session.setAttribute("id", dbId);
			session.setAttribute("nom", dbNom);
			session.setAttribute("prenom", dbPrenom);
			session.setAttribute("email", dbEmail);
			session.setAttribute("password", dbPassword);
		}
		if (email.equals(dbEmail) && password.equals(dbPassword)) {
%>
<jsp:forward page="dashboard.jsp"></jsp:forward>
<%
	} else {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Email ou mot de passe incorrect. Veuillez réessayer');");
			out.println("location='login_page.jsp';");
			out.println("</script>");
		}
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();
	}
%>