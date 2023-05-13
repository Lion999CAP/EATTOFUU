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
               <a class="enlaces" href="index.html"> <img src="img/tofumain.jpg" class="imagen1" alt="Logo del producto"> </a>
            </nav>
            <nav >
              <a class="enlaces" href="index.html"> <h2 class="titulo"> EATTOFUU </h2> </a> 
            </nav>
            <nav class="navengacion">
                <a class="enlaces" href="index.html"> Home   </a>
                <a class="enlaces" href="productos.html"> Productos   </a>
                <a class="enlaces" href="login.html"> Login   </a>
            </nav>
        </header>
        <hr>
        <h2> Todas las categorias: </h2>
   		  <form method="post" name="formCategoria">
            <label for="categoria">Escoja la categoria</label>

	        <% 
	        Categoria object= new Categoria(); 
	        out.print(object.mostrarCategoria());
	        %>
	        
            <hr>
            <button name="enviar" type="submit" ONCLICK="button1()" >ENVIAR</button>
            <button name="cancelar" type="submit" ONCLICK="button2()" >CANCELAR</button>
   		  </form>
   		  
   		  <SCRIPT LANGUAGE="JavaScript">
			  function button1() {
			    document.formCategoria.enviar.value="yes";
			    formCategoria.submit();
			    
			    function button2() {
			    document.getElementById("result").innerHTML = "";
			    }
			  }
		  </SCRIPT>
        <h2> Resultados: </h2>
        <br>
        <div id="result">
	      <%
			if (request.getParameter("enviar") != null) {
				Producto object2= new Producto(); 
				out.print(object2.consultarTodo());
			} 
		  %>
		</div>
		
		<hr>
		
        <h2> Busacar por categorias: </h2>
   		  <form method="post" name="formCategoria2">
            <label for="categoria">Escoja la categoria</label>

	        <% 
	          out.print(object.mostrarCategoria());	
	        %>
	        
            <hr>
            <button name="enviar1" type="submit" ONCLICK="button3()" >ENVIAR</button>
            <button name="cancelar" type="submit" ONCLICK="button4()" >CANCELAR</button>
   		  </form>
   		  
   		  <SCRIPT LANGUAGE="JavaScript">
			  function button3() {
			    document.formCategoria2.enviar.value="yes";
			    formCategoria2.submit();
			    
			    function button4() {
			    document.getElementById("result").innerHTML = "";
			    }
			  }
		  </SCRIPT>
        <h2> Resultados: </h2>
        <br>
        <div id="result">
	      <%
			if (request.getParameter("enviar1") != null) {
				Producto object2= new Producto();
		        int dato=Integer.parseInt(request.getParameter("formCategoria2"));
				out.print("hola");
			} 
		  %>
		</div>
        <hr>
        <footer>
            <ul>
                <li> <a href="creador.html"> Contáctanos </a> </li>
            </ul>
        </footer>
    </body>
</html>