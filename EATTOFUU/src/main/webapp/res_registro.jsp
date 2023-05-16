<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h1> Área de mensajes </h1>
  
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
</body>
</html>