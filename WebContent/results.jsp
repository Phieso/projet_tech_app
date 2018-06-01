<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Tech app</title>
</head>
<body>

	<jsp:include page="header.html"></jsp:include>
	<div class="container text-center">
		<h2 class="text-center">Historique des résultats</h2>

		<p>Sélectionnez un système pour afficher l'historique des
			résultats</p>
		<br /> <br />

		<form action="display_results1.jsp" method="post">
			<input type="hidden" name="id" required value="${id}" /> <input
				type="submit" class="btn btn-info" value="ECS – EAE – UGA – DECT"
				style="cursor: pointer;"
				title="Ce choix concerne :

• Les ECS : équipement de contrôle et de signalisation
CS1140, FC20, BC11, …
• Les EAE : équipement d’alimentation électrique ; voir
AA76
Alimentation pour Titanus Prosens, Topsens, alimentation
pour tableau report d’exploitation FT1001-A1 sur SDI,
alimentation pour interface FDCIO223, …
• Les UGA : Unité de gestion d’Alarme
Alimentation de l’UGA20, alimentation de l’UGA sur la
BC11, …
• Les DECT : dispositif électrique de contrôle et de
temporisation XC10, …" />
		</form>
		<br />

		<form action="display_results2.jsp" method="post">
			<input type="hidden" name="id" required value="${id}" /> <input
				type="submit" class="btn btn-info"
				value="SMSI sans délestage - AES" style="cursor: pointer;"
				title="Ce choix concerne :

• Les SMSI sans délestage :
Alimentation pour MC20, RCB11, pour tableau report d’exploitation FT1001-A1 sur SMSI, AES11 sur STT11
• Les AES : alimentation électrique de sécurité ; voir AA76 Alimentation externe pour DAS raccordé sur MEA11-2, …" />
		</form>
		<br />

		<form action="display_results3.jsp" method="post">
			<input type="hidden" name="id" required value="${id}" /> <input
				type="submit" class="btn btn-info" value="SMSI avec délestage"
				style="cursor: pointer;"
				title="Ce choix concerne :

• Les SMSI avec délestage :
Alimentation pour MD20, RCB2404, STT10, STT1120B, …." />
		</form>
		<br />

		<form action="display_results4.jsp" method="post">
			<input type="hidden" name="id" required value="${id}" /> <input
				type="submit" class="btn btn-info" value="AES 230V pour UAE"
				style="cursor: pointer;"
				title="Ce choix concerne :

• Les AES 230V pour les UAE" />
		</form>
		<br /> <br /> <a href="dashboard.jsp"> <input type="button"
			class="btn btn-outline-dark" value="Retour" style="cursor: pointer;" /></a>

	</div>
	<jsp:include page="footer.html"></jsp:include>
</body>
</html>