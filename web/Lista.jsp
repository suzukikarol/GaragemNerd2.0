<%--
    Document   : Lista
    Created on : 14/02/2018, 19:57:39
    Author     : Beatriz
--%>

<%@page import="modelo.Endereco"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="estilo.css"  type="text/css" media="screen"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Garagem NERD</title>
    </head>
    <body>
        <h1 style="text-align:center; font-family: cursive, Comic Sans">Lista de Usuário</h1>
        <%
            //recuperar lista do request
            List<Usuario> listaUsuario = (List<Usuario>) request.getAttribute("lista");
           
        %>
        
        <table data-role="table" border="1" id="table-custom-2" data-mode="columntoggle" class="ui-body-d ui-shadow table-stripe ui-responsive" data-column-btn-theme="b">
        <tr>
                <td>Nome: </td>
                <td>RG: </td>
                <td>CPF: </td>
                <td>Data de nascimento: </td>
                <td>Telefone:</td>
                <td>Email:</td>
                <td>Login:</td>
                <td>Senha:</td>                 
                
                <td>    </td>
                
                
            </tr>
            
            <% 
                for(Usuario usuario: listaUsuario ){
                       
            %>
      
            <tr class="ui-bar-d">
                <td> <%= usuario.getNome() %>   </td> 
                <td> <%= usuario.getRg() %>  </td>
                <td> <%= usuario.getCpf()%>  </td>
                <td> <%= usuario.getDtnasc() %>  </td>
                <td> <%= usuario.getTelefone() %>  </td>
                <td> <%= usuario.getEmail() %>  </td>
                <td> <%= usuario.getLogin()%>  </td>
                <td> <%= usuario.getSenha()%>  </td>
     
   
                        
                <%-- <td><a href="ControlePessoa?id=<%=usuario.getId() %>&acao=Excluir"> Excluir</a></td> --%>
                <td><a href="ControleUsuario?id=<%=usuario.getId()%>&acao=Consultar"> Editar</a></td>
                <td></td>
                
            </tr>

            <% 
               }           
            %>
         
        </table>        
            <br><br/>
            <a href="principal.jsp">Voltar</font></a>
            <%@include file="footer.jsp" %>
    </body>
</html>
