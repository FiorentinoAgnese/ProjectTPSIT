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

	<%
	if (user != null) {
	%>

	<div class="bg-img" style="background-image: url('images/banner2.jpg')">
		<div class="description">
			<h1>
				Benvenuto
				<%=user%></h1>

			<!-- <br><a href="logout">Logout</a><br> -->
			<br>
			<br>
			<h1>
				Funzioni disponibili <br>
			</h1>
			<a href="gesthotelback.jsp">Visualizza hotel</a>
			<!-- <a href="GestioneProdottiServlet?cmd=viewall">Visualizza Luoghi</a>  -->

		</div>
	</div>

	<%
	} else {
	%>
	<div class="bg-img" style="background-image: url('images/banner2.jpg')">
		<div class="description">
			<h1>Utente non loggato!</h1>

			<br>
			<br>
			<h1>
				Vai alla registrazione <br>
			</h1>
			<a href="indexsignin.jsp">Registrazione</a>
		</div>
	</div>


	<%
	}
	%>

</body>
</html>
