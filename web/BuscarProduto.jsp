<%-- 
    Document   : inicio
    Created on : 21/05/2018, 09:51:52
    Author     : 11151100178
--%>

<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Produto"%>
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
        <h1>Prateleira Virtual</h1>
        <form action="BuscaProduto" method="get">
            <input type="search" name="q" placeholder="Digite o nome do produto para buscar">
        </form>
        
        <br>
    
        <%
            List<Produto> lista = (List<Produto>) request.getAttribute("listaProdutos");
            NumberFormat formatadorPreco = NumberFormat.getCurrencyInstance();
            
            if (lista != null) {
                for (Produto p : lista) {              
        %>
            <div id="case-produtos"><div id="case-produtos-in">
                <div class="produto">
                    <a href="BuscaProduto?q=<%=p.getTitulo()%>">
                          <img src="<%=p.getImagem()%>" width="200">
                    </a>
                    <h3><%=p.getTitulo()%></h3>
                    <p><%=formatadorPreco.format(p.getPreco())%></p>
                </div>
            </div></div>
        <%
                }
            } else {

        %>
            <p>Nenhum produto disponível no momento.</p>   
        <%
            }
        %>
        
        <%@include file="footer.jsp" %>
    </body>
</html>
