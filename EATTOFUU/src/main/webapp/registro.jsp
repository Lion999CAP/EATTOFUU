<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <link href="css/contacto.css" rel="stylesheet" type="text/css">
  <meta charset="UTF-8"/>
  <title>Registrase</title>
</head>
<body class="registro">

  <header>
  
    <h1> Registro de usuario </h1>
    <br>
  
  </header>
	<form action="respuesta.jsp" method="post" class="resgistro_form"> 
	
			<!-- Sitio donde se colocaran los datos del registro-->
			<!-- Actualizar con:
				1. usuario
				2. psw = 5 "caracteres"
				
				3. Actualizar con lo de la practica 4
				4. Actualizar datos de navegacion
			  -->
			
			<table border="0">
				<tr><td>Nombre: </td><td> <input type="text" name="txtNombre" required placeholder="Nombre de usuario"/></td></tr>
				<tr><td>Cedula: </td> <td> <input type="text" id="input" name="txtCedula" maxlenght="10" required placeholder="Cedula"/> </td></tr>
				<tr><td>Foto: </td><td><input type="file" name="fileFoto" accept=".jpg, .jpeg, .png" /> </td></tr>
				<tr><td>Hoja de vida: </td><td><input type="file" name="fileHojaVida" accept=".pdf" size="5000000"/> </td></tr>
				<!-- En size se coloca el tamaño de bytes 1MB = 1 * 1024 * 1024 bytes -->
				<tr><td>Mes y año de nacimiento: </td><td><input type="date" name="fecha" id="fecha" required/> </td></tr>
				<tr>
					<td>Estado Civil</td>
					<td> 
					<select name="cmbECivil">
					<option value="Soltero">Soltero</option>
					<option value="Casado">Casado</option>
					<option value="Divorciado">Divorciado</option>
					<option value="Viudo">Viudo</option>
					</select>
					</td>
				</tr>
				<tr>
					<td> Locación: </td>
					<td>
					<input type="radio" name="rdResidencia" value="Sur"/>Sur 
					<input type="radio" name="rdResidencia" value="Norte"/>Norte
					<input type="radio" name="rdResidencia" value="Centro"/>Centro
					</td>
				</tr>
				<tr><td>Color Favorito: </td> <td><input type="color" name="colorFavorito"/></td></tr>
				<tr>
				  <td><input type="submit" /> </td>
				  <td> <input type="reset" /></td>
				</tr>
			</table>
			<a href="index.jsp"> Regresar </a>
	</form>
</body>
</html>