<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/estilos.css" rel="stylesheet" type="text/css">
<title>Reporte categoria</title>
</head>
<body>
	<%
	  Producto obj=new Producto();
	  out.print(obj.buscarProductoCategoria(Integer.parseInt(request.getParameter("cmbCategoria"))));
	 %>
</body>
</html>