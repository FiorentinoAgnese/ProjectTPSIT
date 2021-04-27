
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inserimento Luogo</title>
</head>
<body class="bg-img">
<h1>INSERIMENTO LUOGO</h1>
<br>
<br>
<a href="gestluogoback.jsp">Lista Luoghi</a>
<br>
<br>
<form    method="post" action="gestluogoBackServlet?cmd=insert">
<table border="3" bordercolor="black" bgcolor="white">
<tr>
<td>IdLuogo</td>
<td><input type="text" name="txtIdLuogo" required
maxlength="5" size="60"></td>
</tr>
<tr>
<td>Nome Città</td>
<td><input type="text" name="txtNomeCitta" required
maxlength="40" size="60"></td>
</tr>
<tr>
<td>Nome Regione</td>
<td><input type="text" name="txtNomeRegione" required
maxlength="30" size="60"></td>
</tr>
<tr>
<td>Provincia</td>
<td><input type="text" name="txtProvincia" required
maxlength="30" size="60"></td>
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
