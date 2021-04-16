<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>  
<! DOCTYPE html PUBLIC "- // W3C // DTD HTML 4.01 Transitional // EN" </font></font><font></font><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
    "http://www.w3.org/TR/html4/loose.dtd"></font></font><font></font><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
<html></font></font><font></font><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
<head></font></font><font></font><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
<meta http-equiv = "Content-Type" content = "text / html; charset = UTF-8"></font></font><font></font>
<title>JSP List Users Records</title><font></font>
</head><font></font>
<body><font></font>
    <sql:setDataSource
    var = "myDS"<font></font>
        driver="com.mysql.jdbc.Driver"<font></font>
        url="jdbc:mysql://localhost:3306/fama?serverTimezone=UTC"<font></font>
        user="root" password="admin"<font></font> />
    <font></font>
    <font></font>
    <sql:query var="listHotel"   dataSource="${myDS}"><font></font>
        SELECT * FROM hotel;<font></font>
    </sql:query><font></font>
    <font></font>
    <div align="center"><font></font>
        <table border="1" cellpadding="5">
            <caption><h2>List of users</h2></caption>
            <tr><font></font>
                <th>IdHotel</th>
                <th>Indirizzo</th>
                <th>Telefono</th><font></font>
                <th>Email</th><font></font>
                <th>Nome</th><font></font>
                <th>numStelle</th><font></font>
                <th>IdLuogo</th><font></font>
                <th>img</th><font></font>
               
            </tr><font></font>
            <c:forEach var="hotel" items="${listHotel.rows}"><font></font>
                <tr><font></font><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                    <td> <c: out value = "$ {hotel.IdHotel}" /> </td></font></font><font></font><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                    <td> <c: out value = "$ {hotel.Indirizzo}" /> </td></font></font><font></font><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                    <td> <c: out value = "$ {hotel.Telefono}" /> </td></font></font><font></font><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                    <td> <c: out value = "$ {hotel.Email}" /> </td></font></font><font></font><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
               		 <td> <c: out value = "$ {hotel.Nome}" /> </td></font></font><font></font><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                    <td> <c: out value = "$ {hotel.numStelle}" /> </td></font></font><font></font><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                    <td> <c: out value = "$ {hotel.IdLuogo}" /> </td></font></font><font></font><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                    <td> <c: out value = "$ {hotel.img}" /> </td></font></font><font></font><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
               
                </tr></font></font><font></font><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">   
         </c:forEach></font></font><font></font><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
         </font></font>
        </table></font></font><font></font><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
    </div></font></font><font></font><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
</body></font></font><font></font><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
</html></font></font>