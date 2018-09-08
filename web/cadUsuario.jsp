<%-- 
    Document   : cadUsuario
    Created on : 31/08/2018, 09:59:43
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

        <%@include file="header.jsp"%>
        <%@include file="menu.jsp" %>
        <%@include file="submenu.jsp" %>
        <%@include file="menulateral.jsp" %>
        
        <div>
        <h1 style="font-family: cursive, Comic Sans"><font color="black">Cadastro de Usuário</h1>
        <div id="content" class="float_r">
        <form action="ControleUsuario" method="POST">
            
            Nome:<br><input type="text" name="txtNome"><br>
            RG:(Somente números)<br> <input name="txtRG" type="text" maxlength="12" onkeypress="formatar('##.###.###-#', this)"><br/>
            CPF:(Somente números)<br><input name="txtCPF" type="text" maxlength="14" onkeypress="formatar('###.###.###-##', this)"><br>
            Data de Nasc:<br> <input name="txtDtNasc" type="date"><br/>
            Telefone: (Incluir DDD)<br> <input name="txtTelefone" type="text" maxlength="12" onkeypress="formatar('## ####-####',this)"><br/>
            E-mail: <br><input type="email" name="txtEmail"><br/>
            Login: <br><input type="text" name="txtLogin"><br/>
            Senha: <br><input type="password" name="txtSenha"><br/><br/>
            <!--Perfil:<select name="optPerfil">
                <option>COMUM</option>
                <option>ADMINISTRADOR</option>
            </select><br/><br/>-->
            
            
            <input type="submit" value="Cadastrar" name="acao"><br/><br/><br/>
 
          <a href="CadEnd.html">Avançar =></a><br/><br/><br/> 
          <!--<a href="principal.jsp">Página Principal</a><br/>
          <a href=".../ControleNotificarPorEmail">Notificar por E-mail</a><br/><br/>  -->
        </form>
        </div>
        </div>
            <br>
           <script type="text/javascript" language="JavaScript">
                // Função que monta Mês, Dia, e Ano para exibir no HTML
                // Declaração de Variaveis que receberam os valores:

                var now = new Date();
                var hours = now.getHours();
                var minutes = now.getMinutes();
                var timeValue = "" + ((hours >12) ? hours -12 :hours)

                //Tratamento quantidade de Digitos nos Minutos e exibi se é 
                // dia ou noite, PM, AM.

                timeValue += ((minutes < 10) ? ":0" : ":") + minutes
                timeValue += (hours >= 12) ? " PM" : " AM"
                timerRunning = true;
                mydate = new Date();
                myday = mydate.getDay();
                mymonth = mydate.getMonth();
                myweekday = mydate.getDate();
                weekday = myweekday;
                myyear = mydate.getFullYear();
                year = myyear;

                // Tratamento dos Dias da Semana

                if(myday == 0)
                        day = " Domingo, "

                else if(myday == 1)
                        day = " Segunda Feira, "

                else if(myday == 2)
                        day = " Terça Feira, "

                else if(myday == 3)
                        day = " Quarta Feira, "

                else if(myday == 4)
                        day = " Quinta Feira, "

                else if(myday == 5)
                        day = " Sexta Feira, "

                else if(myday == 6)
                        day = " Sábado, "

                //Tratamento dos Meses

                if(mymonth == 0)
                        month = " de Janeiro de "

                else if(mymonth ==1)
                        month = " de Fevereiro de "

                else if(mymonth ==2)
                        month = " de Março de "

                else if(mymonth ==3)
                        month = " de April de "

                else if(mymonth ==4)
                        month = " de Maio de "

                else if(mymonth ==5)
                        month = " de Junho de "

                else if(mymonth ==6)
                        month = " de Julho de "

                else if(mymonth ==7)
                        month = " de Agosto de "

                else if(mymonth ==8)
                        month = " de Setembro de "

                else if(mymonth ==9)
                        month = " de Outubro de "

                else if(mymonth ==10)
                        month = " de Novembro de "

                else if(mymonth ==11)
                        month = " de Dezembro de "

                //Exibe na Pagina o Resultado concatenando(+) os valores

                document.write( day + myweekday + month + year + " - " + timeValue);
        </script>
     
        <%@include file="footer.jsp" %>
    </body>  
</html>