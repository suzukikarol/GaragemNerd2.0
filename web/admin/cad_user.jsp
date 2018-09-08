<%-- 
    Document   : cad_user
    Created on : 05/01/2018, 11:42:48
    Author     : Alguém
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="../estilo.css"  type="text/css" media="screen"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Usuário</title>
    </head>
    <body>
        <div>
        <h1>Cadastro de novo usuário!</h1>
        <br/>
        <%
            String msg = (String) request.getAttribute("msg");
            if (msg!=null){
        %>
        <font color="blue"><%=msg %></font>
        <%}%>
        <form action="../ControleUsuario" method="POST">
            Login: <input type="text" name="txtLogin"><br/><br/>
            Senha: <input type="text" name="txtSenha"><br/><br/>
            Perfil: <select name="optPerfil">
                <option>COMUM</option>
                <option>ADMINISTRADOR</option>
            </select></br></br>
            <input type="submit" value="Cadastrar" name="acao">  
    
        </form>
        <br/> <br/>
        <a href=".../ControleNotificarPorEmail">Notificar por E-mail</a><br/><br/>
        <a href="/NerdGaragem_1/principal.jsp">Página Principal</a><br/>
        </font>
       <!-- <a href="/GaragemNerdTESTE_2/cadCli.html">Cadastro</a> -->
       </div>
    </body>
</html>