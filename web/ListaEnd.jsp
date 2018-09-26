<%-- 
    Document   : ListaEnd
    Created on : 24/08/2018, 08:56:03
    Author     : alunocmc
--%>

<%@page import="modelo.Endereco"%>
<%@page import="java.util.List"%>
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
        
         <h1 style="text-align:center; font-family: cursive, Comic Sans">Lista de Usuário</h1>
        <%
            //recuperar lista do request
            List<Endereco> listaEndereco = (List<Endereco>) request.getAttribute("listaEnd");
        %>
        
        <table data-role="table" border="1" id="table-custom-2" data-mode="columntoggle" class="ui-body-d ui-shadow table-stripe ui-responsive" data-column-btn-theme="b">
        <tr>
            <td>Logradouro:</td>
                <td>CEP:</td>
                <td>Número:</td>
                <td>Bairro:</td>
                <td>Cidade:</td>
                <td>Estado:</td>
                
                <td>    </td>
            </tr>
            
            <% 
                for(Endereco endereco: listaEndereco ){
                       
            %>
            
            <tr class="ui-bar-d">
                
                <td> <%= endereco.getLogradouro()%>  </td>
                <td> <%= endereco.getCep()%>  </td>
                <td> <%= endereco.getNumero()%>  </td>
                <td> <%= endereco.getBairro()%>  </td>
                <td> <%= endereco.getCidade()%>  </td>
                <td> <%= endereco.getEstado()%>  </td>
                
                <%-- <td><a href="ControlePessoa?id=<%=endereco.getId() %>&acao=Excluir"> Excluir</a></td> --%>
                <td><a href="ControleEndereco?id=<%=endereco.getId_endereco()%>&acao=Consultar"> Editar</a></td>
                <td></td>
                
            </tr>

            <% 
               }           
            %>
         
        </table>        
            <br><br/>
                <hr>
            <a href="principal.jsp">Voltar</font></a>
            <%@include file="footer.jsp" %>
            
    </div>
    </body>
</html>
