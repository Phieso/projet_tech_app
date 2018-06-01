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
	<jsp:include page="header.html"></jsp:include>
	<div class="container">
		<h2 id="haut">Historique des résultats pour AES 230V pour UAE</h2>
		<br>
		<%
			int id = Integer.parseInt(request.getParameter("id"));
			int id_result;
			java.sql.Connection con;
			java.sql.Statement s;
			java.sql.ResultSet rs;
			java.sql.PreparedStatement pst;
			con = null;
			s = null;
			pst = null;
			rs = null;
			String url = "jdbc:mysql://mydbinstance.cnow1puis8rs.eu-west-3.rds.amazonaws.com:8889/app_titre_pro";
			String user = "phieso";
			String pwd = "hccspv21952";
			//String url = "jdbc:mysql://localhost:8889/app_titre_pro";
			//String user = "root";
			//String pwd = "root";
			try {
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(url, user, pwd);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			String sql = "select id_result, system, i_veille, result from results where system='AES 230V pour UAE' and id_user="
					+ id;
			try {
				s = con.createStatement();
				rs = s.executeQuery(sql);
				while (rs.next()) {
					id_result = rs.getInt(1);
					session.setAttribute("id_result", id_result);
		%>
		<table class="table table-bordered table-responsive-sm">
			<thead class="thead-light text-center">
				<tr>
					<th scope="col">ID résultat</th>
					<th scope="col">I veille</th>
					<th scope="col">Résultat</th>
					<th scope="col">Supprimer</th>
				</tr>
			</thead>
			<tbody>
				<tr class="text-center">
					<th scope="row"><%=rs.getString("id_result")%></th>
					<td><%=rs.getString("i_veille")%></td>
					<td><%=rs.getString("result")%></td>
					<td>
						<form action="delete_result4.jsp" method="post">
							<input type="hidden" name="id" required value="${id}" /> <input
								type="hidden" name="id_result" required value="${id_result}" />
							<input type="submit" class="btn btn-outline-danger"
								value="Supprimer" style="cursor: pointer;" />
						</form>
					</td>
				</tr>
			</tbody>
		</table>
		<%
			}
		%>
		<div class="text-center">
			<a href="results.jsp"><button type="button"
					class="btn btn-outline-dark">Retour</button></a><br>
			<br>
		</div>
		<div class="text-center">
			<a href="#haut"><button type="button"
					class="btn btn-outline-dark">Haut de la page</button></a><br>
			<br>
		</div>
		<div class="text-center">
			<a href="delete_all_results4_confirmation.jsp"><button
					type="button" class="btn btn-outline-danger">Tout
					supprimer</button></a><br>
			<br>
		</div>
	</div>
	<%
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				rs.close();
			if (s != null)
				s.close();
			if (con != null)
				con.close();
		}
	%>
	<jsp:include page="footer.html"></jsp:include>
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


