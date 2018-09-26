<%-- 
    Document   : submenu
    Created on : 25/09/2018, 16:33:12
    Author     : karol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    <body>
        <div id="templatemo_menu">
    	<div id="top_nav" class="ddsmoothmenu">
            <ul>
                <li><a href="institucional.jsp" class="selected">Sobre Nós!</a></li>
                <li><a href="prateleira.jsp">Quadrinhos</a></li>
                <li><a href="cadUsuario.jsp">Cadastros</a></li>
                <li><a href="faqs.jsp">FAQs</a></li>
                <li><a href="carrinho.jsp">Checkout</a></li>
                <li><a href="contato.jsp">Contato</a></li>
            </ul>
            <br style="clear: left" />
        </div> <!-- end of ddsmoothmenu -->
        <div id="menu_second_bar">
        	<div id="top_shopping_cart">
                    Shopping Cart: <strong>3 Products</strong> ( <a href="carrinho.jsp">Show Cart</a> )
            </div>
        	<div id="templatemo_search">
                <form action="#" method="get">
                  <input type="text" value="Search" name="keyword" id="keyword" title="keyword" onfocus="clearText(this)" onblur="clearText(this)" class="txt_field" />
                  <input type="submit" name="Search" value=" Search " alt="Search" id="searchbutton" title="Search" class="sub_btn"  />
                </form>
            </div>
            <div class="cleaner"></div>
    	</div>
    </div> <!-- END of templatemo_menu -->
    </body>
</html>
