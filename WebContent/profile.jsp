<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<h2 class="text-center">Mon compte</h2>
		<br />
		<form action="update_profile.jsp" method="post">
			<input type="hidden" name="id" required value="${id}" />
			<div class="form-group">
				<label for="nom">Nom</label> <input type="text" class="form-control"
					name="nom" required value="${nom}" />
			</div>
			<div class="form-group">
				<label for="prenom">Prénom</label> <input type="text"
					class="form-control" name="prenom" required value="${prenom}" />
			</div>
			<div class="form-group">
				<label for="email">Email</label> <input type="text"
					class="form-control" name="email" required value="${email}" />
			</div>
			<div class="form-group">
				<label for="password">Mot de passe</label> <input type="password"
					class="form-control" name="password" required value="${password}" />
			</div>
			<div class="text-center">
				<input type="submit" class="btn btn-outline-info"
					value="Enregistrer les modifications" style="cursor: pointer;" />
			</div>
		</form>
		<br />
		<div class="text-center">
			<a href="delete_profile_confirmation.jsp"> <input type="button"
				class="btn btn-outline-danger" value="Supprimer mon compte"
				style="cursor: pointer;" /></a><br /> <br /> <a href="dashboard.jsp">
				<input type="button" class="btn btn-outline-dark" value="Retour"
				style="cursor: pointer;" />
			</a>
		</div>
	</div>
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

