<%-- 
    Document   : AlterarEnd
    Created on : 27/08/2018, 08:47:59
    Author     : alunocmc
--%>

<%@page import="modelo.Endereco"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Alterar Endereço</title>
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
        
        <% 
        
        //recuperar a lista do request
        Endereco endereco = (Endereco) request.getAttribute("consulta");
        
        if(endereco != null){
            String msg = (String)request.getAttribute("erro");
        }
           
        %>
  
        <div>
            <h1 style="text-align: center;">ATUALIZAR CADASTRO DE CLIENTES</h1>
        <form action="ControleEndereco?id=<%= endereco.getId_endereco()%>" method="POST">
            ID: <input type="text" name="txtId" value="<%= endereco.getId_endereco()%>"><br/><br/>
            Logradouro: <input type="text" name="txtLogradouro" value="<%= endereco.getLogradouro() %>"><br/>
            CEP: <input type="text" name="txtRG" value="<%= endereco.getCep() %>"><br/>
            Número: <input type="text" name="txtCPF" value="<%= endereco.getNumero() %>"><br/>
            Bairro <input type="text" name="txtBairro" value="<%= endereco.getBairro() %>"><br/>
            Cidade: <input type="text" name="txtCidade" value="<%= endereco.getCidade() %>"><br/>
            Estado: <input type="text" name="txtEstado" value="<%= endereco.getEstado() %>"><br/><br/> 
            
             
            
            <input a href="ControleEndereco?id=<%= endereco.getId_endereco()%>" class="ui-btn ui-btn-b" type="submit" name="acao" value="Alterar">
            <input class="ui-btn ui-btn-b" type="submit" name="acao" value="Excluir"><br/><br/>
            
            
        </form>
    </div>
        <a href="principal.jsp">Página Principal</a>
        <%@include file="footer.jsp" %>
    </body>
</html>
