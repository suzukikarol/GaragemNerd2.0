<%-- 
    Document   : home
    Created on : 05/06/2018, 20:38:50
    Author     : beatr
--%>

<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="estilo.css"  type="text/css" media="screen"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Garagem NERD</title>
    </head>
    <body style="background-color: #0099cc">
        
        <%
            //recupera o usuario da sessao
            Usuario usuario = (Usuario)session.getAttribute("usuarioAutenticado");
            
            if(usuario !=null){
        %>
        <div class="principal">
        <h1 style="font-family: cursive, Comic Sans"><font color="white">Bem vindo, <%=usuario.getLogin() %>!</h1>
        <%}%>

        <ul>
            <li><a href="cadCli.html"><font color ="white" style="font-family: cursive, Comic Sans">Cadastro Dados do cliente</font></a></li></br>
            <li><a href="prateleira.jsp"><font color ="white" style="font-family: cursive, Comic Sans">Prateleira Virtual</font></a></li></br>
            <li><a href="ControleAcesso?acao=Sair"><font color ="white" style="font-family: cursive, Comic Sans">Logout</font></a></li>
        </ul>
        </div> 
       

          
    </body>
</html>