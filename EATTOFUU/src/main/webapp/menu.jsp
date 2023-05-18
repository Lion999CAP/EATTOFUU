<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" import="com.productos.seguridad.*"%>
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
                <a class="enlaces" href="categoria.jsp"> Busqueda   </a>
            </nav>
        </header>
  <main>
  
    <%
	String usuario;
	HttpSession sesion = request.getSession();
	if (sesion.getAttribute("usuario") == null) {
		// Redireccionar a login.jsp si no se ha iniciado sesión
		response.sendRedirect("login.jsp?error=Debe registrarse en el sistema.");
	} else {
		usuario = (String) sesion.getAttribute("usuario");
		int perfil = (Integer) sesion.getAttribute("perfil");
	%>

	<h1>Sitio Privado de Productos</h1>
	<h4>Bienvenido, <%= usuario %></h4>
		
	<%
		Pagina pag = new Pagina();
		String menu = pag.mostrarMenu(perfil);
		out.print(menu);
	}
	%>
	
  </main>
  <footer>
    <p>&copy; 2023 Leandro Lara</p> <a href="creador.jsp"> Contáctame</a> <a href="contactos.jsp"> Locales </a> 
  </footer>
</body>
</html>