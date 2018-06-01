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

.card-img-top {
	padding-top: 20px;
	padding-right: 10px;
	padding-left: 10px;
}
</style>
<title>Tech app</title>
</head>
<body>

	<div class="container">
		<input type="hidden" name="id" required value="${id}" /> <input
			type="hidden" name="prenom" required />

		<h2>
			<b>Bonjour ${prenom} !</b>
		</h2>


		<div class="row justify-content-between">
			<div class="col-sm-6">
				<marquee dir="ltr">
					<font style="font-weight: bold;"><p>Bienvenue sur Tech
							app. Que souhaitez-vous faire ?</p></font>
				</marquee>

			</div>
			<div class="col-sm-6">
				<div class="float-right">
					<a href="home.jsp"> <input type="button"
						class="btn btn-outline-dark" value="Déconnexion"
						onclick="logout()" style="cursor: pointer;" /></a>
				</div>
			</div>
		</div>
		<br>

		<div class="row">

			<div class="col-md-4">
				<div class="card">
					<img class="card-img-top img-responsive"
						src="images/calculator.png" alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title">Calculer l'autonomie des batteries</h5>
						<p class="card-text">Grâce à votre calculateur, vous
							obtiendrez facilement la capacité d'autonomie des équipements en
							entrant vos mesures relevées sur site.</p>
					</div>
					<div class="card-footer text-center">
						<a href="system_choice.jsp"> <input type="button"
							class="btn btn-info" value="Mon calculateur"
							style="cursor: pointer;" /></a>
					</div>
				</div>
				<br>
			</div>

			<div class="col-md-4">
				<div class="card">
					<img class="card-img-top img-responsive" src="images/archive.png"
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title">Consulter l'historique des résultats</h5>
						<p class="card-text">Besoin de suivre l'évolution de vos
							relevés ? Pas de problème, vous avez la possibilité de
							sauvegarder vos résultats et de les consulter par la suite.</p>
					</div>
					<div class="card-footer text-center">
						<a href="results.jsp"> <input type="button"
							class="btn btn-info" value="Mon historique"
							style="cursor: pointer;" /></a><br />
					</div>
				</div>
				<br>
			</div>

			<div class="col-md-4">
				<div class="card">
					<img class="card-img-top img-responsive" src="images/user.png"
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title">Accéder à mon compte</h5>
						<p class="card-text">Ici, vous aurez accès aux informations de
							votre compte que vous pourrez modifier ou supprimer. Êtes-vous
							sûr(e) de pouvoir vous passer de Tech app ?</p>
					</div>
					<div class="card-footer text-center">
						<a href="profile.jsp"> <input type="button"
							class="btn btn-info" value="Mon compte" style="cursor: pointer;" /></a><br />
					</div>
				</div>
				<br>
			</div>

		</div>
		<div style="display: none;">
			Icons made by <a href="https://www.flaticon.com/authors/smashicons"
				title="Smashicons">Smashicons</a> from <a
				href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a>
			is licensed by <a href="http://creativecommons.org/licenses/by/3.0/"
				title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a>
		</div>
		<div style="display: none;">
			Icons made by <a href="https://www.flaticon.com/authors/smashicons"
				title="Smashicons">Smashicons</a> from <a
				href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a>
			is licensed by <a href="http://creativecommons.org/licenses/by/3.0/"
				title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a>
		</div>
		<div style="display: none;">
			Icons made by <a href="https://www.flaticon.com/authors/smashicons"
				title="Smashicons">Smashicons</a> from <a
				href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a>
			is licensed by <a href="http://creativecommons.org/licenses/by/3.0/"
				title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a>
		</div>
	</div>
	<script type="text/javascript">
		function logout() {
			alert('Veuillez fermer la fenêtre pour vous déconnecter complètement');
			location = 'home.jsp';
		}
	</script>

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