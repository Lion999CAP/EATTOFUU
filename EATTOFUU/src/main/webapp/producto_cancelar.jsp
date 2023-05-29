<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     <%
     int cod = Integer.parseInt(request.getParameter("cod"));
     Producto mp = new Producto();
     boolean f = mp.NoOfertaProducto(cod);
	 if(f==true){
		response.sendRedirect("categoria.jsp");
	 }
  	 %>
   
</body>
</html>