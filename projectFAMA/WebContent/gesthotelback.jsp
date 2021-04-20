<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   

   


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP List Hotel Records</title>

	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="DataTables/datatables.min.css"/>
    <script type="text/javascript" src="DataTables/datatables.min.js"></script>
	
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/zf/jszip-2.5.0/dt-1.10.24/b-1.7.0/b-html5-1.7.0/datatables.min.css"/>
	 
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/v/zf/jszip-2.5.0/dt-1.10.24/b-1.7.0/b-html5-1.7.0/datatables.min.js"></script>


	<meta http-equiv="Content-type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">
	<title>DataTables example - Zero configuration</title>
	<link rel="shortcut icon" type="image/png" href="/media/images/favicon.png">
	<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="http://www.datatables.net/rss.xml">
	<link rel="stylesheet" type="text/css" href="/media/css/site-examples.css?_=0602f7ec58abe00302963423bf7a8d5a">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css">
	<style type="text/css" class="init">
	
	
	
	</style>
	<script type="text/javascript" src="/media/js/site.js?_=30648b1410332bada11fa3ff8050ff88"></script>
	<script type="text/javascript" src="/media/js/dynamic.php?comments-page=examples%2Fbasic_init%2Fzero_configuration.html" async></script>
	<script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" language="javascript" src="../resources/demo.js"></script>
	<script type="text/javascript" class="init">
	
	
    $(document).ready(function() {
	    $('#example').DataTable( {

	    	initComplete: function () {
	            this.api().columns().every( function () {
	                var column = this;
	                var select = $('<select><option value=""></option></select>')
	                    .appendTo( $(column.footer()).empty() )
	                    .on( 'change', function () {
	                        var val = $.fn.dataTable.util.escapeRegex(
	                            $(this).val()
	                        );
	 
	                        column
	                            .search( val ? '^'+val+'$' : '', true, false )
	                            .draw();
	                    } );
	 
	                column.data().unique().sort().each( function ( d, j ) {
	                    select.append( '<option value="'+d+'">'+d+'</option>' )
	                } );
	            } );
	        }
	    } );
	} );
	




	</script>
</head>
<body>
<form action="gesthotelBackServlet" method="get">
    <sql:setDataSource
        var="myDS"
        driver="com.mysql.cj.jdbc.Driver"
      	url="jdbc:mysql://localhost:3306/fama?serverTimezone=UTC"
        user="root" password="admin" 
    />
     
    <sql:query var="Customerlist"   dataSource="${myDS}">
        SELECT * FROM hotel;
    </sql:query>
     
    <div align="center">
    
     <a href="menuback.jsp"><h5>Go back to menu page</h5></a>
    <table id="example" class="display" style="width:80%" border="1" cellpadding="5">
            <caption><h2>List of hotel</h2></caption>
            <thead>
	            <tr>
	              	<th>IdHotel</th>
	                <th>Indirizzo</th>
	                <th>Telefono</th>
	                <th>Email</th>
	                <th>Nome</th>
	                <th>NumStelle</th>
	            <th>IdLuogo</th>
	                <th>img</th>
	            <th>delete</th>
	            </tr>
            </thead>
            <tbody>
            <c:forEach var="user" items="${Customerlist.rows}">
                <tr>
                    <td><c:out value="${user.IdHotel}" /></td>
                    <td><c:out value="${user.Indirizzo}" /></td>
                    <td><c:out value="${user.Telefono}" /></td>
                    <td><c:out value="${user.Email}" /></td>
                   <td><c:out value="${user.Nome}" /></td>
                    <td><c:out value="${user.numStelle}" /></td>
                    <td><c:out value="${user.IdLuogo}" /></td>
                    <td><c:out value="${user.img}" /></td>
                   
<td><a	href="gesthotelBackServlet?cmd=elimina&id=${user.IdHotel}"> <img src="images/delete.jpg"></td>
                  
                </tr>
            </c:forEach>
            </tbody>
            <tfoot>
	             <tr>
	         <th>IdHotel</th>
	                <th>Indirizzo</th>
	                <th>Telefono</th>
	                <th>Email</th>
	                <th>Nome</th>
	                <th>NumStelle</th>
	            <th>IdLuogo</th>
	                <th>img</th>
	                <th>delete</th>
	            
	            </tr>
        	</tfoot>
        
        </table>
    </div>
</form>
</body>
</html>




