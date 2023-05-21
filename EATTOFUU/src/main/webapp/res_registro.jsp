<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"import="com.productos.negocio.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/estilos.css" rel="stylesheet" type="text/css">
<title>EATTOFUU</title>
</head>
<body>
  <h1> Área de mensajes </h1>
  
		<%
		Producto prod=new Producto();
		String str_id = request.getParameter("id");
		int id = Integer.parseInt(str_id);
		String str_categoria=request.getParameter("cmbCategoria");
		int cat=Integer.parseInt(str_categoria);
		String nombre=request.getParameter("nombre");
		String str_cant=request.getParameter("cantidad");
		int cantidad=Integer.parseInt(str_cant);
		String str_precio=request.getParameter("precio");
		double precio=Double.parseDouble(str_precio);
		out.print(prod.ingresarProducto(id, cat, nombre, cantidad, precio, ""));
		%>
  
</body>
</html>