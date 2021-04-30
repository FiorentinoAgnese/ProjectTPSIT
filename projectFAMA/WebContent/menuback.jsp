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
     <div> <h4>
				Benvenuto
				<%=user%></h4>
				<a align='right' href="login.jsp"> <h6>Torna al login</h6></a></div>
  <a align='center'> <h1>AGENCY  MANAGEMENT</h1></a>

	<div  class="bg-img" >
<style>
.bg-img {
 background-image: url('images/menu.jpg');
 background-repeat: no-repeat;
  background-size: cover;
}
	</style>	
		<div class="description">
			

			<!-- <br><a href="logout">Logout</a><br> -->
			<br> <br>
			<h2>
				Funzioni disponibili: <br><br>
			</h2>
		<div class="div" style=" width: 15%;"><a href="gesthotelback.jsp" ><img src="images/hotel.jpg"  width="150" height="200"><br><h4 align="center">Visualizza Hotel</h4></a></div>	<br><br>
		<div class="div" style=" width: 15%;">	<a href="gestluogoback.jsp" ><img src="images/luogo.jpg" width="150" height="200"><br><h4 align="center">Visualizza Luoghi</h4></a> </div>	
<style>
.div {
border-style:solid;
 border-color:black; 
 border-width:3px;
 background-color:white;


}
	</style>	


<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		</div>
	</div>




</body>
</html>
