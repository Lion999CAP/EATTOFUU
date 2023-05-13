<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edad de usuario:</title>
</head>
<body>
  <header>
    <h1> Advinar tu edad </h1>
  </header>
  <form action="etapa.jsp" method="post" class="edad_form">
    <table bordder="1">
      <tr> <td> Ingresa tu edad: </td> <td> <input type="text" name="edad" placeholder="Edad del usuario" required/> </td> </tr>
      <tr>
		<td><input type="submit" /> </td>
	    <td> <input type="reset" /></td>
	  </tr>
    </table>
  </form>
  
</body>
</html>