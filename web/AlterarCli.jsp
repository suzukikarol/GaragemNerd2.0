<%@page import="modelo.Usuario"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Garagem Nerd</title>
<meta name="keywords" content="" />
<meta name="description" content="" />

<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js"></script>

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
        Usuario usuario = (Usuario) request.getAttribute("consulta");
        
        if(usuario != null){
            String msg = (String)request.getAttribute("erro");
        }
           
        %>
  
        <div>
            <h1 style="text-align: center;">ATUALIZAR CADASTRO DE CLIENTES</h1>
        <form action="ControleUsuario?id=<%= usuario.getId()%>" method="POST">
            ID: <input type="text" name="txtId" value="<%= usuario.getId()%>"><br/><br/>
            Nome: <input type="text" name="txtNome" value="<%= usuario.getNome() %>"><br/>
            RG: <input type="text" name="txtRG" value="<%= usuario.getRg() %>"><br/>
            CPF: <input type="text" name="txtCPF" value="<%= usuario.getCpf() %>"><br/>
            Data de Nasc: <input type="date" name="txtDtNasc" value="<%= usuario.getDtnasc() %>"><br/>
            Telefone: <input type="text" name="txtTelefone" value="<%= usuario.getTelefone() %>"><br/>
            Email: <input type="email" name="txtEmail" value="<%= usuario.getEmail() %>"><br/><br/> 
            Login: <input type="text" name="txtLogin" value="<%= usuario.getLogin() %>"<br/><br/>
            Senha: <input type="text" name="txtSenha" value="<%= usuario.getSenha() %>"><br/><br/>
            
            
            
            <input a href="ControleUsuario?id=<%= usuario.getId()%>" class="ui-btn ui-btn-b" type="submit" name="acao" value="Alterar">
            <input class="ui-btn ui-btn-b" type="submit" name="acao" value="Excluir"><br/><br/>
            
        </div>  
        </form>
        </div>
    </div>
        <a href="principal.jsp">Página Principal</a>
        <%@include file="footer.jsp" %>
    </body>
</html>
