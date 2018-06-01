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
		<h2>SMSI avec délestage</h2>
		<p>Veuillez entrer les mesures relevées sur site</p>
		<br>

		<form action="calcul_result3.jsp" method="post"">
			<input type="hidden" name="id" required value="${id}" />
			<div class="form-group">
				<label for="i_veille3">I veille (A)</label> <input type="number"
					class="form-control" name="i_veille3" required step="0.01"
					value="${i_veille3}" />
			</div>
			<div class="form-group">
				<label for="i_alarme3">I alarme (A)</label> <input type="number"
					class="form-control" name="i_alarme3" required step="0.01"
					value="${i_alarme3}" />
			</div>
			<div class="form-group">
				<label for="i_delestage3">I délestage (A)</label> <input
					type="number" class="form-control" name="i_delestage3" required
					step="0.01" value="${i_delestage3}" />
			</div>

			<div class="form-group">
				<label for="t_delestage3">T délestage (en minutes)</label> <input
					type="number" class="form-control" name="t_delestage3" required
					step="0.01" value="${t_delestage3}" />
			</div>
			<div class="text-center">
				<input type="submit" class="btn btn-outline-info" value="Calculer"
					style="cursor: pointer;" />
			</div>
		</form>

		<div class="form-group">
			<label for="resultat">Résultat Autonomie</label> <input
				readonly="readonly" class="form-control" name="result3" step="0.01"
				value="${result3} Ah" />
		</div>

		<form action="save_result3.jsp" method="post"">
			<input type="hidden" name="id" required value="${id}" /> <input
				type="hidden" name="i_veille3" required step="0.01"
				value="${i_veille3}" /> <input type="hidden" name="i_alarme3"
				required step="0.01" value="${i_alarme3}" /> <input type="hidden"
				name="i_delestage3" required step="0.01" value="${i_delestage3}" />
			<input type="hidden" name="t_delestage3" required step="0.01"
				value="${t_delestage3}" /> <input type="hidden" name="result3"
				step="0.01" value="${result3}" />
			<div class="text-center">
				<input type="submit" class="btn btn-outline-info"
					value="Sauvegarder le résultat" style="cursor: pointer;" />
			</div>
		</form>
		<br />

		<div class="text-center">
			<a href="new_calcul3.jsp"> <input type="button"
				class="btn btn-outline-info" value="Nouveau calcul"
				style="cursor: pointer;" /></a><br />
		</div>
		<br />

		<div class="text-center">
			<a href="system_choice.jsp"> <input type="button"
				class="btn btn-outline-dark" value="Retour" style="cursor: pointer;" /></a>
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