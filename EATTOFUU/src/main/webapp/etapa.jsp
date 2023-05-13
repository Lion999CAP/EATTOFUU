<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" session="true" %>
  <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tu edad</title>
</head>
<body>
  <header>
    <h1> Advinar tu edad </h1>
  </header>
  
  <hr>
  <%
  int adivinar=0;
  if (request.getParameter("edad") != null)
  {
  adivinar = Integer.parseInt(request.getParameter("edad"));
  HttpSession sesion=request.getSession();
  sesion.setAttribute("edad",adivinar);
  int edad=(int)sesion.getAttribute("edad");
  //out.print(edad);
  if (edad <= 14)
  {
	  sesion.setAttribute("etapa","niñez");
  }
  else if (edad >=15 && edad <=24 )
  { 
    sesion.setAttribute("etapa","juventud");
  }
  else if (edad >= 25 && edad < 65)
  {
	  sesion.setAttribute("etapa","adultez");
  }
  else if (edad >= 65 && edad <= 120)
  {
	  sesion.setAttribute("etapa","vejez");
  }
  else
  sesion.setAttribute("etapa","aún no existe la categoría");
  }
  %>
  
  <%
  HttpSession sesion=request.getSession();
  out.println("Tu edad es "+sesion.getAttribute("edad"));
  out.println(" estás en la etapa de "+ sesion.getAttribute("etapa"));
  %>
  
  <br>
  
  <image src="https://img.freepik.com/vector-gratis/persona-diferentes-edades_23-2148407975.jpg?w=2000&t=st=1682628212~exp=1682628812~hmac=322bce6151d5d4792bcffee96ca00d4f1cd18a1c3320f7d19f0fa9d0a50aeb13" width="600" hight="700">
  
  
</body>
</html>