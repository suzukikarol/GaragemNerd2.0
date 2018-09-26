<%-- 
    Document   : contato
    Created on : 30/08/2018, 10:35:41
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
            
            <h1>Contate-nos</h1>
            <div class="content_half float_l">
		<h4>Envie sua mensagem...</h4>
                <p>Adorariamos saber sua opinião, sugestão ou critica, só assim podemos melhorar nossa empresa e te oferecer cada vez mais qualidade <a href="http://validator.w3.org/check?uri=referer" rel="nofollow"><strong>XHTML</strong></a> &amp; <a href="http://jigsaw.w3.org/css-validator/check/referer" rel="nofollow"><strong>CSS</strong></a>.</p>
                <div id="contact_form">
                   <form method="post" name="contact" action="#">
                        
                        <label for="author">Name:</label> <input type="text" id="author" name="author" class="required input_field" />
                        <div class="cleaner h10"></div>
                        <label for="email">Email:</label> <input type="text" id="email" name="email" class="validate-email required input_field" />
                        <div class="cleaner h10"></div>
                        <label for="subject">Subject:</label> <input type="text" name="subject" id="subject" class="input_field" />
                        <div class="cleaner h10"></div>
                        <label for="text">Message:</label> <textarea id="text" name="text" rows="0" cols="0" class="required"></textarea>
                        <div class="cleaner h10"></div>
                        <input type="submit" value="Send" id="submit" name="submit" class="submit_btn float_l" />
			<input type="reset" value="Reset" id="reset" name="reset" class="submit_btn float_r" />
                        
            	</form>
                </div>
            </div>
           <div class="cleaner h20"></div>
            <h6><strong>LOCALIZAÇÃO</strong></h6>
                <br>RUA MOGI DAS CRUZES,<br />
            	<br>CENTRO<br />
            	<br>CEP 08940568<br /><br />
                <strong>Phone:</strong> 020-050-1920<br />
            	<strong>Email:</strong> <a href="mailto:garagemnerd2.7@gmail.com">garagemnerd2.7@gmail.com</a><br />
                
    </div> <!-- END of templatemo_main -->
    <hr>
    <%@include file="footer.jsp" %>
    
</div> <!-- END of templatemo_wrapper -->

</body>
</html>