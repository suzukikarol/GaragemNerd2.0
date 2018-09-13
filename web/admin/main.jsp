<%-- 
    Document   : main
    Created on : 13/09/2018, 10:59:31
    Author     : alunocmc
--%>

<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <div id="templatemo_wrapper">
	<div id="templatemo_header">
            
        <%@include file="header.jsp"%>
        <%@include file="menu.jsp" %>
        
        <%
            //recupera o usuario da sessao
            Usuario usuario = (Usuario)session.getAttribute("usuarioAutenticado");
            //Usuario usuario = new Usuario();
            
            if(usuario !=null){
        %>
        <div>
            <h1 style="font-family: cursive, Comic Sans"><font color="black">Bem vindo, <%=usuario.getNome()%>!</h1>
            <%}%>
            <ul>
                <font color ="black" style="font-family: cursive, Comic Sans">  
                    <li><a href="ControleUsuario?acao=Listar">Lista De Clientes</a></li><br>                    
                    <li><a href="ControleEndereco?acao=Listar">Lista De Endereços</a></li><br>
                    <li><a href="cadProduto.jsp">Cadastro de produtos</a></li></br>
                    <li><a href="ControleProduto?acao=Listar">Lista De Produtos</a></li><br>             
                    <li><a href="ControleAcesso?acao=Sair">Logout</a></li>
                </font>
            </ul>
        </div> 
            <%@include file="footer.jsp" %>
    </body>
</html>
