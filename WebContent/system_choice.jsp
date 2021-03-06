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
		<h2>Choix du système</h2>
		<p>Veuillez sélectionner un système d'équipements pour calculer sa
			capacité d'autonomie</p>
		<br /> <br />

		<div>
			<form>
				<a href="system1_page.jsp"> <input type="button"
					class="btn btn-info" value="ECS – EAE – UGA – DECT"
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
temporisation XC10, …" /></a>
			</form>
			<br />

			<form>
				<a href="system2_page.jsp"> <input type="button"
					class="btn btn-info" value="SMSI sans délestage - AES"
					style="cursor: pointer;"
					title="Ce choix concerne :

• Les SMSI sans délestage :
Alimentation pour MC20, RCB11, pour tableau report d’exploitation FT1001-A1 sur SMSI, AES11 sur STT11
• Les AES : alimentation électrique de sécurité ; voir AA76 Alimentation externe pour DAS raccordé sur MEA11-2, …" /></a>
			</form>
			<br />

			<form>
				<a href="system3_page.jsp"> <input type="button"
					class="btn btn-info" value="SMSI avec délestage"
					style="cursor: pointer;"
					title="Ce choix concerne :

• Les SMSI avec délestage :
Alimentation pour MD20, RCB2404, STT10, STT1120B, …." /></a>
			</form>
			<br />

			<form>
				<a href="system4_page.jsp"> <input type="button"
					class="btn btn-info" value="AES 230V pour UAE"
					style="cursor: pointer;"
					title="Ce choix concerne :

• Les AES 230V pour les UAE" /></a>
			</form>
		</div>
		<br /> <br /> <a href="dashboard.jsp"> <input type="button"
			class="btn btn-outline-dark" value="Retour" style="cursor: pointer;" /></a>

	</div>
	<jsp:include page="footer.html"></jsp:include>
</body>
</html>