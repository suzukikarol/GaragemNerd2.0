<%-- 
    Document   : cadProd
    Created on : 03/09/2018, 16:54:24
    Author     : karol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Garagem Nerd</title>
        <!-- templatemo 352 station shop -->
        <!-- Station Shop Template 
        http://www.templatemo.com/preview/templatemo_352_station_shop-->
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
        
            <%@include file="submenu.jsp" %>
            
            <h1>Cadastro de Produtos</h1>
            <form action="ControleProduto" method="POST">
            
            Título: <input name="txtTitulo" type="text"><br/>
            Descricao: <input name="txtDescricao" type="text"><br/>            
            Preço: <input type="text" name="txtPreco"><br/><br/>
            Imagem: <input type="file" name="txtImagem"><br/><br/>
            
            <input type="submit" value="Cadastrar" name="acao">
            <!--<input type="submit" value="Listar" name="acao">--><br><br>
            <a href="principal.jsp">Página Principal</a>
            
        </form>
        </div>
       <link rel="stylesheet" type="text/css" media="all" href="footer.jsp" />
       
       
       <link rel="stylesheet" type="text/css" media="all" href="css/jquery.dualSlider.0.2.css" />
       <%@include file="footer.jsp" %>
    </body>
</html>