<%-- 
    Document   : Loja
    Created on : 30/08/2018, 10:31:01
    Author     : alunocmc
--%>


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
</script>

<<script language="javascript">   
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
                            <a href="prateleira.jsp" title="Read more" class="more">Saiba mais</a>
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
    </div> <!-- END of templatemo_middle -->
  
    
     <div id="content" class="float_r">
        <h1>Nossa prateleira conta com uma variedade de quadrinhos</h1>
                  
            <div class="product_box">
            	<a href="productdetail.html"><img src="images/product/01.jpg" alt="Image 01" /></a>
                <h3>Batman - Detective Comics</h3>
                <p class="product_price">$ 9.99</p>
           
            </div>        	
            <div class="product_box">
            	<a href="productdetail.html"><img src="images/product/02.jpg" alt="Image 02" /></a>
                <h3>Doctor Strange</h3>
                <p class="product_price">$ 6.50</p>
              
            </div>        	
            <div class="product_box no_margin_right">
            	<a href="productdetail.html"><img src="images/product/03.jpg" alt="Image 03" /></a>
                <h3>Captain Marvel</h3>
                <p class="product_price">$ 12,0</p>
          
            </div>        	
            <div class="product_box">
            	<a href="productdetail.html"><img src="images/product/04.jpg" alt="Image 04" /></a>
                <h3>Iron Man</h3>
                <p class="product_price">$ 6.50</p>
              
            </div>        	
            <div class="product_box">
            	<a href="productdetail.html"><img src="images/product/05.jpg" alt="Image 05" /></a>
                <h3>Space Man</h3>
                <p class="product_price">$ 7.99</p>
              
            </div>        	
            <div class="product_box no_margin_right">
            	<a href="productdetail.html"><img src="images/product/06.jpg" alt="Image 06" /></a>
                <h3>DeadPool - Dead Part One<h3/><a href="http://validator.w3.org/check?uri=referer" rel="nofollow"><strong>XHTML</strong></a> &amp; <a href="http://jigsaw.w3.org/css-validator/check/referer" rel="nofollow"><strong>CSS</strong></a>.</h3>
                <p class="product_price">$ 7.50</p>
            
            </div>        	
            <div class="product_box">
            	<a href="productdetail.html"><img src="images/product/07.jpg" alt="Image 07" /></a>
                <h3>Hulk and Wolverine</h3>
                <p class="product_price">$ 12.0</p>
              
            </div>        	
            <div class="product_box">
            	<a href="productdetail.html"><img src="images/product/08.jpg" alt="Image 08" /></a>
                <h3>Homem Aranha</h3>
                <p class="product_price">$ 7.99</p>
              
            </div>        	
            <div class="product_box no_margin_right">
            	<a href="productdetail.html"><img src="images/product/09.jpg" alt="Image 09" /></a>
                <h3>Captain America</h3>
                <p class="product_price">$ 10</p>
          
            </div> 
           <div class="product_box">
            	<a href="productdetail.html"><img src="images/product/11.jpg" alt="Image 10" /></a>
                <h3>Thor</h3>
                <p class="product_price">$ 9.99</p>
           
            </div>        	
            <div class="product_box">
            	<a href="productdetail.html"><img src="images/product/12.jpg" alt="Image 11" /></a>
                <h3>Batman e Robin</h3>
                <p class="product_price">$ 6.50</p>
         
            </div>        	
            <div class="product_box no_margin_right">
            	<a href="productdetail.html"><img src="images/product/13.jpg" alt="Image 12" /></a>
                <h3>Capitão América</h3>
                <p class="product_price">$ 12,0</p>

            </div>
                            
        <a href="prateleira.jsp">Conheça nossos quadrinhos!</a>
 	
        </div> 
    
 
    
  
    
</div> <!-- END of templatemo_wrapper -->
  <%@include file="footer.jsp" %>
</body>
</html>