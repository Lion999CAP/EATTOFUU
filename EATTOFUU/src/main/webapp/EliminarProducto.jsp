<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EATTOFUU</title>
</head>
<body>
  <header id="header">
            <nav class="logo">
               <a class="enlaces" href="index.jsp"> <img src="img/tofumain.jpg" class="imagen1" alt="Logo del producto"> </a>
            </nav>
            <nav >
              <a class="enlaces" href="index.jsp"> <h2 class="titulo"> EATTOFUU </h2> </a> 
            </nav>
            <nav class="navengacion">
                <a class="enlaces" href="index.jsp"> Home   </a>
                <a class="enlaces" href="productos.jsp"> Productos   </a>
                <a class="enlaces" href="login.jsp"> Login   </a>
            </nav>
   </header>
   
   <main>
   <h1>Texto</h1>
   
     <%
     int cod = Integer.parseInt(request.getParameter("cod"));
     Producto mp = new Producto();
     boolean f = mp.EliminarProducto(cod);
	 if(f==true){
		response.sendRedirect("categoria.jsp");
	 }
  	 %>
   
   </main>
   
  <footer>
                <p>&copy; 2023 Leandro Lara</p> <a href="creador.jsp"> Contáctame</a> <a href="contactos.jsp"> Locales </a> 
        </footer>
</body>
</html>