<%-- 
    Document   : produto
    Created on : 12/03/2018, 11:10:34
    Author     : 11151100178, bea
--%>

<%@page import="modelo.Produto"%>
<%@page import="java.text.NumberFormat"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Garagem NERD</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="estilo.css">
    </head>
    <body>
        <h1><a href=".">Garagem NERD</a></h1><br>
            <%
               // Recupera os produtos.
               java.util.List<Produto> produtos = (java.util.List<Produto>)
               request.getAttribute("produtos");
               if(produtos == null) {
               request.getRequestDispatcher("/ControleProduto?acao=listaProdutos").forward(request,response);
               }
            %>

        <h1>Lista de Produtos</h1>
            <table border="0" cellpadding="5" align="center">
                <%
                    int contadorColuna=1;
                    for(Produto produto : produtos){
                    //se é o primeiro produto, cria o inicio da linha
                    if(contadorColuna == 1) {
                    out.println("<tr>");
                    }
                %>
        <td align="center" valign="bottom"> <img src="image/<%=produto.getImagem()%>"
       alt="Imagem do produto<%=produto.getImagem()%>"/> <br/>
        <%=produto.getTitulo()%><br/>
        <a href="ControleCarrinho?acao=addProduto&id=<%=produto.getId()%>">
       Comprar</a></td>
        <%
            //se é o último produto, exibir o término da linha
            if(contadorColuna == 3){
            out.println("</tr>");
            contadorColuna =0;
            }
            //atualiza o contador de colulas
            contadorColuna ++;

            }//fim do for
        %>
        </table>
    </body>
</html>
