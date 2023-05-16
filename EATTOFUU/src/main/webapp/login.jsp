<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
                <a class="enlaces" href="categoria.jsp"> Busqueda   </a>
            </nav>
        </header>
        <hr>
        <div id="login">
	        <h1>Inicio de Sesion</h1>
			    <form method="post" id="form_login" action="verificarLogin.jsp">
			      <label for="username">Usuario:</label>
			      <input type="text" id="usuario" name="usuario" required placeholder="Nombre de usuario" size="30"><br><br>
			      <label for="password">Contraseña:</label>
			      <input type="password" id="clave" maxlength="6" name="clave" required placeholder="Contraseña" size="30"><br><br>
			      <input type="submit" value="Ingresar">
			        <a id="registrar" href="registro.jsp"> Registrarme </a>
			    </form>
		</div>
		<footer>
                <p>&copy; 2023 Leandro Lara</p> <a href="creador.jsp"> Contáctame</a> <a href="contactos.jsp"> Locales </a> 
        </footer>
    </body>
</html>