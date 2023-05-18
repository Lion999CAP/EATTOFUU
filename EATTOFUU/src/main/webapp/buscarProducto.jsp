<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>

<!DOCTYPE html>
<html lang="es">
    <head>
    <meta charset="utf-8"/>
        <link href="css/estilos.css" rel="stylesheet" type="text/css">
        <title>
            EATTOFUU.com
        </title>
            
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
        <hr>
        <h2> Todos los productos: </h2>
   		  <%
   		  Producto object= new Producto();
   		  out.print(object.consultarProducto(Integer.parseInt(request.getParameter("cmbCategoria"))));
   		  %>
		<!--  --////////////////////////////////////////////////////////////////////////////////-->
		
        <hr>
        <footer>
                <p>&copy; 2023 Leandro Lara</p> <a href="creador.jsp"> Contáctame</a> <a href="contactos.jsp"> Locales </a> 
        </footer>
    </body>
</html>