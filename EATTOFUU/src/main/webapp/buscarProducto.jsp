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
        <h2> Todas las categorias: </h2>
   		  <form method="post" name="formCategoria" action="categoria.jsp">
            <label for="categoria">Escoja la categoria</label>

	        <% 
	        Categoria object= new Categoria(); 
	        out.print(object.mostrarCategoria());
	        %>
	        
            <hr>
            <input type="submit"/>
            <input type="reset"/>
   		  </form>
   		  
        <h2> Resultados: </h2>
        <br>
        <div id="result">
	      <%
	      Producto object2= new Producto();
		  %>
		</div>
		
		<!--  --////////////////////////////////////////////////////////////////////////////////-->
		
        <hr>
        <footer>
                <p>&copy; 2023 Leandro Lara</p> <a href="creador.jsp"> Contáctame</a> <a href="contactos.jsp"> Locales </a> 
        </footer>
    </body>
</html>