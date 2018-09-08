<%-- 
    Document   : erro
    Created on : 14/02/2018, 20:08:33
    Author     : Alexandre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Erro!</title>
    </head>
    <body>
        <h1>Erro!</h1>
        <%= ((Exception)request.getAttribute("erro")).getMessage() %><br>
        <a href="principal.jsp">Página Principal</a>
    </body>
</html>
