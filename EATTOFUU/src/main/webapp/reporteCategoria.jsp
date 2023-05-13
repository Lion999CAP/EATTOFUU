<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reporte categoria</title>
</head>
<body>
	<%
	Producto object= new Producto(); 
	out.print(object.consultarTodo());
	%>
</body>
</html>