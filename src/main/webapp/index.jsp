<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="modelo.libro" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/styles.css">
<title>Biblioteca</title>
</head>
<body>
<table>
	<tr>
	<th><b>ISBN</b></th>
	<th><b>Título</b></th>
	<th><b>Autor</b></th>
	</tr>
	
	<% ArrayList<libro> libros = (ArrayList<libro>)request.getAttribute("libros"); 
	if(libros !=null){
	for(libro l:libros){%>
	<tr>
		<td><%=l.getIsbn()%></td>
		<td><%=l.getTitulo()%></td>
		<td><%=l.getAutor()%></td>
	</tr>
	<%}
	}%>
	
</table>
	<div>
		<form action="insertar" method="post">
			<label for="isbn">ISBN</label>
			<input type="text" id="isbn" name="isbn" placeholder="ISBN..">
			
			<label for="titulo">Título</label>
			<input type="text" id="titulo" name="titulo" placeholder="Título..">
			
			<label for="autor">Autor</label>
			<input type="text" id="autor" name="autor" placeholder="Autor..">
			
			<input type="submit" value="Submit">
		</form>
	</div>
	<% String error = (String)request.getAttribute("error");
		if(error!=null){%>
		<p><%=error%><p>
		<%}%>
		
	<% String info = (String)request.getAttribute("info");
		if(info!=null){%>
		<p><%=info%><p>
		<%}%>
	
</body>
</html>