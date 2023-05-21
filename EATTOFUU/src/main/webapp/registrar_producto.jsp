<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<%@ page import="java.io.File" %>
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
                <a class="enlaces" href="productos.jsp"> Productos   </a>
                <a class="enlaces" href="categoria.jsp"> Busqueda   </a>
                <a class="enlaces" href="login.jsp"> Login   </a>
            </nav>
        </header>
  </header>
  
  <main>
  
    <h1>Área exclusiva para vendedores</h1>
  	<h2>Registrar un nuevo producto</h2>
  	<form action="res_registro.jsp" method="post" enctype="multipart/form-data">
        <table>
            <tr>
				<td><label for="nombre">Código:</label></td>
				<td><input type="text" name="id" required="required"></td>
			</tr>
            <tr>
                <td><label for="categoria">Categoría:</label></td>
                <td>
                    <% 
			        Categoria object= new Categoria(); 
			        out.print(object.mostrarCategoria());
			        %>
                </td>
            </tr>
            <tr>
                <td><label for="nombre">Nombre:</label></td>
                <td><input type="text" id="nombre" name="nombre" required></td>
            </tr>
            <tr>
                <td><label for="cantidad">Cantidad:</label></td>
                <td><input type="number" id="cantidad" name="cantidad" required min="5"></td>
            </tr>
            <tr>
                <td><label for="precio">Precio:</label></td>
                <td><input type="number" step="0.01" id="precio" name="precio" required></td>
            </tr>
            <tr>
                <td><label for="imagen">Imagen:</label></td>
                <td><input type="file" name="fileFoto" accept=".jpg, .jpeg, .png" /></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" value="Guardar">
                    <input type="reset" value="Restablecer">
                </td>
            </tr>
        </table>
    </form>
    
    
    
  </main>
    
  <footer>
                <p>&copy; 2023 Leandro Lara</p> <a href="creador.jsp"> Contáctame</a> <a href="contactos.jsp"> Locales </a> 
        </footer>
</body>
</html>