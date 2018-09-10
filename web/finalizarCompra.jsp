<%-- 
    Document   : finalizarCompras
    Created on : 10/09/2018, 09:05:54
    Author     : alunocmc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>GARAGEM NERD - Finalizar Compras</title>
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

</head>

<body>
        <%@include file="header.jsp"%>
        <%@include file="menu.jsp" %>
        <%@include file="submenu.jsp" %>
        <%@include file="menulateral.jsp" %>
    
       <h2>Carrinho</h2>
            <h5><strong>Detalhes</strong></h5>
            <table border="1" cellpadding="2" >
        <tr>
           <td bgcolor="#000088"><font color="#FBEFEF">Excluir</font></td>
           <td bgcolor="#000088"><font color="white">ID</font></td>
           <td bgcolor="#000088"><font color="white">Título</font></td>
           <td bgcolor="#000088"><font color="white">Descrição</font></td>
          <td bgcolor="#000088"><font color="white">Preço Unitário</font></td> 
           <td bgcolor="#000088"><font color="white">Preço</font></td>
          <td bgcolor="#000088"><font color="white">Total</font></td>
        </tr>
        <%@include file="footer.jsp" %>     
    </body>
</html>
