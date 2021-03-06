<%-- 
    Document   : produto
    Created on : 12/03/2018, 11:10:34
    Author     : 11151100178, bea
--%>

<%@page import="modelo.Produto"%>
<%@page import="java.text.NumberFormat"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Garagem Nerd - Produto</title>
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
     </div>
        <hr>
            <%@include file="footer.jsp" %>
    </body>
</html>
