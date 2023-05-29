<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<link href="css/estilos.css" rel="stylesheet" type="text/css">

<!-- <script>
function toggleLinks(event) {
    event.preventDefault();
    var link1 = document.getElementById("link1");
    var link2 = document.getElementById("link2");
    if (link1.style.pointerEvents === "none") {
        link1.style.pointerEvents = "auto";
        link1.style.color = "black";
        link2.style.pointerEvents = "none";
        link2.style.color = "grey";
    } else {
        link1.style.pointerEvents = "none";
        link1.style.color = "grey";
        link2.style.pointerEvents = "auto";
        link2.style.color = "black";
    }
}
</script> -->

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
     <h2> Todos los productos: </h2>
   		  <%
   		  Producto object= new Producto();
   		  out.print(object.consultarProductoOferta(Integer.parseInt(request.getParameter("cmbCategoria"))));
   		  %>
  </main>

  <footer>
    <p>&copy; 2023 Leandro Lara</p> <a href="creador.jsp"> Contáctame</a> <a href="contactos.jsp"> Locales </a> 
  </footer>

</body>
</html>