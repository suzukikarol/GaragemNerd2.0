<%-- 
    Document   : carrinho
    Created on : 20/03/2018, 08:31:40
    Author     : 11151100178, Beatriz
    
--%>

<%@page import="modelo.Produto"%>
<%@page import="modelo.ItemDeCompra"%>
<%@page import="modelo.CarrinhoDeCompra"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Garagem NERD</title>
    </head>
    <body>
        <%@include file="header.jsp"%>
        <%@include file="menu.jsp" %>
        <h1>Carrinho de Compras!</h1>
        <table border="1" cellpadding="2" >
        <tr>
           <td bgcolor="#000088"><font color="#FBEFEF">Excluir</font></td>
           <td bgcolor="#000088"><font color="white">ID</font></td>
           <td bgcolor="#000088"><font color="white">Título</font></td>
           <td bgcolor="#000088"><font color="white">Descricao</font></td>           
           <td bgcolor="#000088"><font color="white">Preço</font></td>
           <td bgcolor="#000088"><font color="white">Total</font></td>
           <td bgcolor="#000088"><font color="white">Imagem</font></td>
        </tr>
        <%
            //recupera os produtos do carrinho da sessao
            CarrinhoDeCompra carrinho = (CarrinhoDeCompra) session.getAttribute("carrinho");
            for(ItemDeCompra item : carrinho.getItens()){
        %>
        <tr>
            <td><a href="ControleCarrinho?acao=removeProduto&idProduto=<%=item.getProduto().getId()%>">X</td>
            <td><%=item.getProduto().getId()%></td>
            <td><%=item.getProduto().getTitulo()%></td>     
            <td><%=item.getProduto().getDescricao()%></td>             
            <td><%=item.getProduto().getPreco() %></td>
            <td><%=item.getTotal()%></td>
            <td align="center" valign="bottom"><img src="imagem/<%=item.getProduto().getImagem()%>"
            alt="Imagem do produto <%=item.getProduto().getImagem()%>" style="width:100px"/></td>
            
            <td><a href="ControleCarrinho?acao=addProduto&idProduto=<%=item.getProduto().getId()%>">+</a></td>
        </tr>
        <%
            }
        %>
        </table>
        
        <strong>Valor Total: <%=carrinho.calculaTotal() %></strong><br/><br/>
        <a href="prateleira.jsp">Continue Comprando!</a><br/>
        <a href="ControleCarrinho?acao=cancelaCompra">Cancelar Compra</a><br/><br/>
        <a href="finalizarCompra.jsp">Finalizar Compra!</a>
        <%@include file="footer.jsp" %>
    </body>
</html>