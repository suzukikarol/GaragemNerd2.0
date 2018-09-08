<%-- 
    Document   : principal
    Created on : 14/02/2018, 20:16:26
    Author     : Beatriz Gomes
--%>

<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Garagem Nerd</title>
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


ddsmoothmenu.init({
	mainmenuid: "top_nav", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

 
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

<link rel="stylesheet" type="text/css" media="all" href="css/jquery.dualSlider.0.2.css" />

<script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
<script src="js/jquery.easing.1.3.js" type="text/javascript"></script>
<script src="js/jquery.timers-1.2.js" type="text/javascript"></script>
<script src="js/jquery.dualSlider.0.3.min.js" type="text/javascript"></script>

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
                    <!--<li><a href="admin/cad_user.jsp">Cadastro usuário</a></li></br>-->
                    <li><a href="cadUsuario.jsp">Cadastro de clientes</a></li></br>
                    <li><a href="ControleUsuario?acao=Listar">Lista De Clientes</a></li><br>                    
                    <li><a href="ControleEndereco?acao=Listar">Lista De Endereços</a></li><br>
                    <li><a href="cadProduto.jsp">Cadastro de produtos</a></li></br>
                    <li><a href="ControleProduto?acao=Listar">Lista De Produtos</a></li><br>            
                    <li><a href="prateleira.jsp">Prateleira Virtual</a></li></br>
                    <li><a href="carrinho.jsp">Meu Carrinho</a></li></br>
                    <li><a href="ControleAcesso?acao=Sair">Logout</a></li>
                </font>
            </ul>
        </div> 
            <%@include file="footer.jsp" %>
    </body>
</html>