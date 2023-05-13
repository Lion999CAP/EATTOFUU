<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
  <script src="script/funciones.js" defer></script>
    <title>Registro</title>
</head>
<body>
  <header>
    Registro de clientes
  </header>
	<hr>
    <p>Nombre: <%= request.getParameter("txtNombre") %></p>
    <p>Cedula: <%= request.getParameter("txtCedula") %></p>
    <p>Foto: <%= request.getParameter("fileFoto") %></p>
    <p>Hoja de vida: <%= request.getParameter("fileHojaVida") %></p>
    <p>Fecha de nacimiento: <%= request.getParameter("fecha") %></p>
    <p>Estado civil: <%= request.getParameter("cmbECivil") %></p>
    <p>Reside en: <%= request.getParameter("rdResidencia") %></p>
    <p>Su color favorito es: <%= request.getParameter("colorFavorito") %></p>
    <font color=<%= request.getParameter("colorFavorito") %>> Este es tu color favorito</font>
    <p>Provincia de nacimiento:  
    
    <%
    funciones object= new funciones();
    out.print(object.provincia_cedula(request.getParameter("txtCedula")));
    %>
    
  	</p> 
  	
	<p> Edad:  
	<%
	out.print(object.calcular_edad(request.getParameter("fecha")));
	%>
	</p>
</html>