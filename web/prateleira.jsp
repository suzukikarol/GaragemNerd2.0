<%--
    Document   : prateleira 
    Created on : 21/03/2018, 10:18:57
    Author     : 11151100178, Beatriz
--%>

<%@page import="java.util.ArrayList"%>
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

}
</script>

<link rel="stylesheet" type="text/css" media="all" href="css/jquery.dualSlider.0.2.css" />

        <script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
        <script src="js/jquery.easing.1.3.js" type="text/javascript"></script>
        <script src="js/jquery.timers-1.2.js" type="text/javascript"></script>
        <script src="js/jquery.dualSlider.0.3.min.js" type="text/javascript"></script>

        <link rel="stylesheet" href="estilo.css"  type="text/css" media="screen"/>
        <link rel="stylesheet" href="estilo.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <%@include file="header.jsp"%>
        <%@include file="menu.jsp" %>
        <%@include file="submenu.jsp" %>
    
            <div id="templatemo_middle" class="carousel">
    	<div class="panel">
				
            <div class="details_wrapper">

                    <div class="details">

                    <div class="detail">
                            <h2><a href="#">Garagem Nerd</a></h2>
                                                                                                                <p>Garagem Nerd é o local ideal para encontrar seus quadrinhos e completar sua coleção.</p>
                            <a href="#" title="Read more" class="more">Saiba mais</a>
                    </div><!-- /detail -->

                    <div class="detail">
                            <h2><a href="#">Temos HQ's Clássicas</a></h2>
                            <p>Liga da Justiça, Vingadores, Disney, Nacionais, Estrangeiros e etc.</p>
                            <a href="#" title="Read more" class="more">Saiba mais</a>
                    </div><!-- /detail -->

                    <div class="detail">
                            <h2><a href="#">Ofertas imperdíveis</a></h2>
                            <p>Toda semana, ofertas que você não pode perder.</p>
                            <a href="#" title="Read more" class="more">Saiba mais</a>
                    </div><!-- /detail -->

                    <div class="detail">
                            <h2><a href="#">Seja um NERD</a></h2>
                            <p>Não perca tempo e cadastre-se já.</p>
                            <a href="cadUsuario.jsp" title="Read more" class="more">Clique aqui e cadastre-se já!!!!</a>
                    </div><!-- /detail -->

                </div><!-- /details -->

            </div><!-- /details_wrapper -->

            <div class="paging">
                    <div id="numbers"></div>
                    <a href="javascript:void(0);" class="previous" title="Previous" >Previous</a>
                    <a href="javascript:void(0);" class="next" title="Next">Next</a>
            </div><!-- /paging -->

            <a href="javascript:void(0);" class="play" title="Turn on autoplay">Play</a>
            <a href="javascript:void(0);" class="pause" title="Turn off autoplay">Pause</a>

    </div><!-- /panel -->

    <div class="backgrounds">

            <div class="item item_1">
                    <img src="images/slider/02.jpg" alt="Slider 01" />
            </div><!-- /item -->

            <div class="item item_2">
                    <img src="images/slider/03.jpg" alt="Slider 02" />
            </div><!-- /item -->

            <div class="item item_3">
                    <img src="images/slider/01.jpg" alt="Slider 03" />
            </div><!-- /item -->

            <div class="item item_4">
                    <img src="images/slider/marvelbackground.jpg" alt="Slider 04" />
            </div><!-- /item -->

    </div><!-- /backgrounds -->
    
    </div> <!-- END of templatemo_middl-->
        
        <div class="img-test">
       
   
    
        <%
             // Recupera os produtos.
            List<Produto> produtos = (List<Produto>)
            request.getAttribute("produtos");
             if(produtos == null) {
             request.getRequestDispatcher("/ControleProduto?acao=listaProdutos").forward(request,
            response);
             }
        %>
        <!--/ControleProduto?acao=Listar"-->
      
           <form action="BuscaProduto" method="get">
                <input type="search" name="q" placeholder="Digite o nome do produto para buscar">
           </form></br>
            <table border="0" cellpadding="5" align="center">
            <%
                int contadorColuna=1;
                for(Produto produto : produtos){
                //se é o primeiro produto, cria o inicio da linha
                if(contadorColuna == 1) {
                out.println("<tr>");
                }
            %>
            <td align="center" valign="bottom"> <img src="imagem/<%=produto.getImagem()%>"
            alt="Imagem do produto <%=produto.getImagem()%>" style="width:250px"/> <br/>
             <%=produto.getTitulo()%><br/>
             R$ <%=produto.getPreco()%><br/>             
             <a href="ControleCarrinho?acao=addProduto&idProduto=<%=produto.getId()%>">
                 <button class="btn btn-default">
                        <span class="glyphicon glyphicon-tag icone-botao"></span> 
                        <span>&nbsp; Comprar</span>
                 </button>
             <%
                //se é o último produto, exibir o término da linha
                if(contadorColuna == 4){
                out.println("</tr>");
                contadorColuna =0;
                }
                //atualiza o contador de colulas
                contadorColuna ++;

                }//fim do for
             %>
            </table>
        </div>
            
            <br>
            <a href="principal.jsp">Página Principal</a>
            <%@include file="footer.jsp" %>
    </body>
</html>