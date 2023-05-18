<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
    
 <%
  int codigo = Integer.parseInt(request.getParameter("codigo"));
  int categoria = Integer.parseInt(request.getParameter("cmbCategoria"));
  String nombre = request.getParameter("nombre");
  int cantidad = Integer.parseInt(request.getParameter("cantidad"));
  float precio = Float.parseFloat(request.getParameter("precio"));
  String imagen = request.getParameter("imagen");
  
  Producto object= new Producto();
  out.print(object.ingresarProducto(codigo, categoria, nombre, cantidad, precio, imagen));
  %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/estilos.css" rel="stylesheet" type="text/css">
<title>EATTOFUU</title>
</head>
<body>
  <h1> Área de mensajes </h1>
  
</body>
</html>