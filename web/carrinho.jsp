<%-- 
    Document   : carrinho
    Created on : 31/08/2018, 09:59:43
    Author     : Karoline
--%>
<%@page import="modelo.Produto"%>
<%@page import="modelo.ItemDeCompra"%>
<%@page import="modelo.CarrinhoDeCompra"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Garagem Nerd</title>
<meta name="keywords" content="" />
<meta name="description" content="" />

<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js">

/***********************************************
* Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/

</script>

<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>

<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "top_nav", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

</script>

<link rel="stylesheet" type="text/css" media="all" href="css/jquery.dualSlider.0.2.css" />

<script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
<script src="js/jquery.easing.1.3.js" type="text/javascript"></script>
<script src="js/jquery.timers-1.2.js" type="text/javascript"></script>
<script src="js/jquery.dualSlider.0.3.min.js" type="text/javascript"></script>

<script>
    function formatar(mascara, documento){
      var i = documento.value.length;
      var saida = mascara.substring(0,1);
      var texto = mascara.substring(i);

      if (texto.substring(0,1) != saida){
                documento.value += texto.substring(0,1);
      }

    }
</script>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Garagem NERD</title>
    </head>
    <body>
            <div id="templatemo_wrapper">
	
            <%@include file="header.jsp"%>

            <%@include file="submenu.jsp"%>
         
        <div id="templatemo_main">
        
            <div id="sidebar" class="float_l">
                <%@include file="menulateral.jsp" %>
            </div>
            <%@include file="menulateral2.jsp" %>
           
        </div>
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
        </div>
        <hr>
        <%@include file="footer.jsp" %>
    </body>
</html>