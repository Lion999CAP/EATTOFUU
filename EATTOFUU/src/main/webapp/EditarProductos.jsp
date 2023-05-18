<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>

 	<%
  	int cod= Integer.parseInt(request.getParameter("cod"));
  	Producto mp= new Producto();
  	mp.ConsulEditarProductos(cod);
  	%>

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
    <h1> Actualizar productos:</h1>
    <form action="productos.jsp" method="post">
    <table>
       		<tr>
            <td><label for="codigo">Código:</label></td>
            <td> <input type="text" id="codigo" name="editarcodigo" value="<%= mp.getId() %>" /> </td>
            </tr>
            
            <tr>
            <td><label for="categoria">Categoría:</label></td>
            <td> <input type="text" id="categoria" name="editarcategoria" value="<%= mp.getCat() %>" /> </td>
            </tr>
            
            <tr>
            <td><label for="nombre">Descripción:</label></td>
            <td> <input type="text" id="descripcion" name="editardescripcion" value="<%= mp.getNombre() %>" /> </td>
            </tr>
            
            <tr>
            <td><label for="cantidad">Precio:</label></td>
            <td> <input type="text" id="precio" name="editarprecio" value="<%=mp.getPrecio() %>" /> </td>
            </tr>
            
            <tr>
            <td><label for="precio">Cantidad:</label></td>
            <td> <input type="text" id="cantidad" name="editarcantidad" value="<%=mp.getCantidad() %>" /> </td>
            </tr>
            
            <tr>
            <td> <input type="submit" value="Actualizar"></td>
            <td> <input type="reset" value="Restablecer"></td>
        	</tr>
    </table>
    </form>
  
  </main>
  <footer>
    <p>&copy; 2023 Leandro Lara</p> <a href="creador.jsp"> Contáctame</a> <a href="contactos.jsp"> Locales </a> 
  </footer>
</body>
</html>