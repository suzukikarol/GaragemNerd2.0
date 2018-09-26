<%-- 
    Document   : ListaProd
    Created on : 26/02/2018, 08:27:17
    Author     : 11151100178, Beatriz
--%>

<%@page import="modelo.Produto"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
            <hr>
            <%@include  file="footer.jsp" %>            
    </body>
</html>