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
<style type="text/css">
div.container {
	margin-top: 30px;
}
</style>
<title>Tech app</title>
</head>
<body>
	<div class="container">
		<h2 class="text-center">Je crée mon compte</h2>
		<form action="registerSave.jsp" method="post">
			<div class="form-group">
				<label for="nom">Nom</label> <input type="text" class="form-control"
					name="nom" required />
			</div>

			<div class="form-group">
				<label for="prenom">Prénom</label> <input type="prenom"
					class="form-control" name="prenom" required />
			</div>

			<div class="form-group">
				<label for="email">Email</label> <input type="email"
					class="form-control" name="email" required />
			</div>

			<div class="form-group">
				<label for="password">Mot de passe</label> <input type="password"
					class="form-control" name="password" required />
			</div>
			<div class="text-center">
				<input type="submit" class="btn btn-outline-info"
					value="Créer mon compte" style="cursor: pointer;" />
			</div>
		</form>

		<br />
		<div class="text-center">
			<a href="home.jsp"> <input type="button" value="Retour"
				class="btn btn-outline-dark" style="cursor: pointer;" /></a>
		</div>
	</div>
	<jsp:include page="footer.html"></jsp:include>
</body>
</html>