<%@ page language="java" import="projectFAMA.Utente"
	import="java.util.Locale" import="org.apache.tomcat.jni.Local"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%!String user;%>
<%
user = (String) session.getAttribute("SESSION_UTENTE");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/stilemenu.css">
</head>
<body>



	<div class="bg-img" style="background-image: url('images/banner2.jpg')">
		<div class="description">
			<h1>
				Benvenuto
				<%=user%></h1>

			<!-- <br><a href="logout">Logout</a><br> -->
			<br> <br>
			<h1>
				Funzioni disponibili <br>
			</h1>
			<a href="gesthotelback.jsp">Visualizza Hotel</a>
			<a href="gestluogoback.jsp">Visualizza Luoghi</a> 

		</div>
	</div>




</body>
</html>
