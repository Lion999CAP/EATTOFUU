<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/estilos.css" rel="stylesheet" type="text/css">
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
  <h2> Todas las categorias: </h2>
  <form action="reporteCategoria.jsp" method="post" name="formCategoria">
 
 <label for="cat"></label>
  <%
  Categoria obj= new Categoria();
  out.print(obj.mostrarCategoria());
  %>
    
    <button class="boton-cat" type="submit">Enviar</button>
  </form>
  </main>

		<footer>
                <p>&copy; 2023 Leandro Lara</p> <a href="creador.jsp"> Contáctame</a> <a href="contactos.jsp"> Locales </a> 
        </footer>
</body>
</html>