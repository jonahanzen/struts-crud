<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!--  gamb e arra atacam novamente, brincadeira.
 que fique de referencia que utilizei esse método notando que o struts aparenta ter alguns probleminhas
para configurar devidamente a pagina inicial com actions -->
<!-- @see https://stackoverflow.com/questions/39399/how-can-i-set-the-welcome-page-to-a-struts-action -->
<% 
  response.sendRedirect("http://localhost:8080/strutscrud/listaestudantes");
%> 

</body>
</html>