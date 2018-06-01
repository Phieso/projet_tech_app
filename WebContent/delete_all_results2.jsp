<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.13/css/all.css"
	integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
	crossorigin="anonymous">
<title>Tech app</title>
</head>
<body>
	<div class="container">
		<%
			int id = Integer.parseInt(request.getParameter("id"));

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
				PreparedStatement ps = con.prepareStatement(
						"delete from results where id_user=" + id + " and system='SMSI sans delestage - AES'");

				int s = ps.executeUpdate();
				session.setAttribute("id", id);

				if (s > 0) {
		%>
		<form action="display_results2.jsp" method="post">
			<input type="hidden" name="id" required value="${id}" />
			<div class="alert alert-info" role="alert">Tous les résultats
				pour SMSI sans délestage - AES ont bien été supprimés</div>
			<div class="text-center">
				<input type="submit" class="btn btn-outline-info" value="Ok"
					style="cursor: pointer;" />
			</div>
		</form>
	</div>
	<%
		} else {
				out.print("Une erreur s'est produite durant la suppression.");
			}
		} catch (Exception e1) {
			e1.printStackTrace();
		}
	%>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>