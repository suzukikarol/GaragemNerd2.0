<%-- 
    Document   : ListaProd
    Created on : 26/02/2018, 08:27:17
    Author     : 11151100178, Beatriz
--%>

<%@page import="modelo.Produto"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="estilo.css"  type="text/css" media="screen"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Garagem NERD</title>
    </head>
    <body>
        <h1 style="text-align:center; font-family: cursive, Comic Sans">Lista de Produtos</h1>
        <% 
            //recuperar lista do request
            List<Produto> listaproduto = (List<Produto>) request.getAttribute("listaprod"); //("lista"); mudar na controle se der erro
        %>
        
        <table data-role="table" border="1" id="table-custom-2" data-mode="columntoggle" class="ui-body-d ui-shadow table-stripe ui-responsive" data-column-btn-theme="b"> 
            <tr>
                <td>Título: </td>
                <td>Descrição: </td>
                <td>Preço: </td>
                <td>Imagem: </td>
                <td>Status: </td>
                <td> </td>
                <td> </td>                
            </tr>   
            
            <% 
                for(Produto produto: listaproduto){
            %>
            
            <tr class="ui-bar-d">
                <td><%= produto.getTitulo() %> </td>
                <td><%= produto.getDescricao() %> </td>
                <td><%= produto.getPreco() %></td>
                <td><%= produto.getImagem() %></td>
                <td><%= produto.isStatus() %></td>
                
                
                <td><a href="ControleProduto?id=<%=produto.getId() %>&acao=Consultar"> Editar</a></td>
               <%-- <td><a href="ControleProduto?id=<%=produto.getId() %>&acao=Consultar"> Atualizar</a></td> --%>
            </tr>
            
            <% 
                }
            %>
            
        </table>
            <br><br/>
            <a href="cadProduto.html">Continuar Cadastrando</font></a><br/><br/>
            <a href="principal.jsp">Página principal</font></a>
            
            <%@include  file="footer.jsp" %>            
    </body>
</html>