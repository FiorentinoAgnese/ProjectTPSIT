
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inserimento Hotel</title>
</head>
<body class="bg-img">
<h1>INSERIMENTO HOTEL</h1>
<br>
<br>
<a href="gesthotelback.jsp">Lista Hotel</a>
<br>
<br>
<form    method="post" action="gesthotelBackServlet?cmd=inserisci">
<table border="3" bordercolor="black" bgcolor="white">
<tr>
<td>IdHotel</td>
<td><input type="text" name="txtIdHotel" required
maxlength="5" size="60"></td>
</tr>
<tr>
<td>Indirizzo</td>
<td><input type="text" name="txtIndirizzo" required
maxlength="40" size="60"></td>
</tr>
<tr>
<td>Telefono</td>
<td><input type="text" name="txtTelefono" required
maxlength="30" size="60"></td>
</tr>
<tr>
<td>Email</td>
<td><input type="text" name="txtEmail" required
maxlength="30" size="60"></td>
</tr>
<tr>
<td>Nome</td>
<td><input type="text" name="txtNome" required
maxlength="60" size="60"></td>
</tr>
<tr>

<tr>
<td>Numero Stelle</td>
<td><input type="text" name="txtNumStelle" required maxlength="20"
size="60"></td>
</tr>
<td>IdLuogo</td>
<td><input type="text" name="txtIdLuogo" required maxlength="20"
size="60"></td>
</tr>
<td>Img</td>
<td><input type="text" name="txtImg" required maxlength="20"
size="60"></td>
</tr>
<tr>
<td align="center" colspan="2"><input type="reset"
value="ANNULLA">&nbsp;&nbsp;&nbsp; 
<input type="submit" value="INVIA"></td>
</tr>
</table>
</form>
</body>
</html>
