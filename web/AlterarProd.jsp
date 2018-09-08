<%-- 
    Document   : alterarProd
    Created on : 26/02/2018, 11:39:28
    Author     : 11151100178
--%>

<%@page import="modelo.Produto"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Alterar Produto</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!-- templatemo 352 station shop -->
<!-- 
Station Shop Template 
http://www.templatemo.com/preview/templatemo_352_station_shop 
-->
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

<script type="text/javascript">
    
    $(document).ready(function() {
        
        $(".carousel").dualSlider({
            auto:true,
            autoDelay: 6000,
            easingCarousel: "swing",
            easingDetails: "easeOutBack",
            durationCarousel: 1000,
            durationDetails: 600
        });
        
    });
    
</script>

</head>

    <body>    
        <%@include file="header.jsp"%>
        <%@include file="menu.jsp" %>
        <%
            //recuperar a lista do request
            Produto produto = (Produto)request.getAttribute("consulta");
            
            if(produto != null){
                String msg = (String)request.getAttribute("erro");
            }
        %>
        
        
        <div>
        <h1 style="text-align: center "font-family: inherit>ATUALIZAR CADASTRO DE PRODUTOS</h1>
        <form action="ControleProduto?id=<%= produto.getId()%>" method="POST">
            ID: <input type="text" name="txtId" value="<%=produto.getId() %>"><br/><br/>
            Título: <input type="text" name="txtTitulo" value="<%=produto.getTitulo() %>">
            Descricao: <input type="text" name="txtDescricao" value="<%=produto.getDescricao()%>"><br/>          
            Preço: <input type="text" name="txtPreco" value="<%=produto.getPreco() %>"><br/>
            Imagem: <input type="text" name="txtImagem" value="<%=produto.getImagem() %>"><br/>
            
            </font>
            <input a href="ControleProduto?id=<%= produto.getId()%>"class="ui-btn ui-btn-b" type="submit" name="acao" value="Alterar">
            <input class="ui-btn ui-btn-b" type="submit" name="acao" value="Excluir"><br/><br/>

        </form>
        
        </div>            
            <a href="principal.jsp">Página Principal</a>
    </body>
</html>
