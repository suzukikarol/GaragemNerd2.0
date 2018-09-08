/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.PerfilDeAcesso;
import modelo.Usuario;
import DAO.UsuarioDAO;
import java.util.List;

/**
 *
 * @author Alexandre
 */
public class ControleUsuario extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            String acao = request.getParameter("acao");
            Usuario usuario = new Usuario();
            if(acao.equals("Cadastrar")){
                //recuperar os parâmetros   
                String nome = request.getParameter("txtNome");
                String rg = request.getParameter("txtRG");
                String cpf = request.getParameter("txtCPF");
                String dtnasc = request.getParameter("txtDtNasc");
                String tel = request.getParameter("txtTelefone");
                String email = request.getParameter("txtEmail");
                String login = request.getParameter("txtLogin");
                String senha = request.getParameter("txtSenha");
                /*usuario.setLogin(request.getParameter("txtLogin"));
                usuario.setSenha(request.getParameter("txtSenha"));*/
                String perfil = request.getParameter("optPerfil");
            
                usuario.setNome(nome);
                usuario.setRg(rg);
                usuario.setCpf(cpf);
                usuario.setDtnasc(dtnasc);
                usuario.setTelefone(tel);
                usuario.setEmail(email);
                usuario.setLogin(login);
                usuario.setSenha(senha);
                usuario.setPerfil(PerfilDeAcesso.COMUM);
                usuario.setStatus(true);
                
                UsuarioDAO dao = new UsuarioDAO();
                dao.cadastraNovoUsuario(usuario);
                
                request.setAttribute("lista", dao.listar());
                
                RequestDispatcher rd = request.getRequestDispatcher("/Lista.jsp");
                //quem vai acionar toda essa ação é o forward
                rd.forward(request, response);
                
                if(perfil.equalsIgnoreCase("administrador")){
                    usuario.setPerfil(PerfilDeAcesso.ADMINISTRADOR);
                }else{
                    usuario.setPerfil(PerfilDeAcesso.COMUM);
                }
                 UsuarioDAO usuarioDAO = new UsuarioDAO();
                usuarioDAO.cadastraNovoUsuario(usuario);
            request.setAttribute("msg", "cadastrado com sucesso");
            RequestDispatcher rd1 = request.getRequestDispatcher("cadCli.jsp");
            rd1.forward(request, response);
            }else{
                if(acao.equals("Listar")){
                    UsuarioDAO dao = new UsuarioDAO();
                    List<Usuario> listaUsuario = dao.listar();
                    
                    //atribuir a lista ao request
                    request.setAttribute("lista", listaUsuario);
                    request.getRequestDispatcher("/Lista.jsp").forward(request, response);
                }else if (acao.equals("Consultar")){
                    //pega os dados da interface
                    int id = Integer.parseInt(request.getParameter("id"));
                    //instancia novo usuario e passa o id para a instância
                    //Usuario usuario = new Usuario();
                    usuario.setId(id);
                    //instancia a nova dao
                    UsuarioDAO dao = new UsuarioDAO();
                    //cria lista de usuarios com nome de ConsultarCliente
                    //que recebe o método consultar
                    Usuario usuarioConsulta = dao.Consultar(usuario);
                    //a lista é settada com o nome de consulta
                    request.setAttribute("consulta", usuarioConsulta);
                    //é referenciado os dados para a jsp alterarCliente
                    RequestDispatcher rd = request.getRequestDispatcher("/AlterarCli.jsp");
                    //quem vai acionar toda essa ação é o forward
                    rd.forward(request, response);
                }else if(acao.equals("Alterar")){
                    //recuperar os parâmetros                    
                    String nome = request.getParameter("txtNome");
                    String rg = request.getParameter("txtRG");
                    String cpf = request.getParameter("txtCPF");
                    String dtnasc = request.getParameter("txtDtNasc");
                    String tel = request.getParameter("txtTelefone");
                    String email = request.getParameter("txtEmail");
                    String login = request.getParameter("txtLogin");
                    String senha = request.getParameter("txtSenha");
                    String id = request.getParameter("txtId");
                    
                    usuario.setNome(nome);
                    usuario.setRg(rg);
                    usuario.setCpf(cpf);
                    usuario.setDtnasc(dtnasc);
                    usuario.setTelefone(tel);
                    usuario.setEmail(email);
                    usuario.setLogin(login);
                    usuario.setSenha(senha);
                    usuario.setId(Integer.parseInt(id));
                    
                    UsuarioDAO dao = new UsuarioDAO();
                    Usuario alterarUsuario = dao.Alterar(usuario);
                    
                    //usuario.setId(Integer.parseInt(id));
                    
                    
                    
                    request.setAttribute("lista", dao.listar());
                    RequestDispatcher rd = request.getRequestDispatcher("/Lista.jsp");
                    //quem vai acionar toda essa ação é o forward
                    rd.forward(request, response);
                }else if(acao.equals("Excluir")){
                    String id = request.getParameter("txtId");
                    
                    usuario.setId(Integer.parseInt(id));
                    
                    UsuarioDAO dao = new UsuarioDAO();
                    dao.Excluir(usuario);
                    
                    RequestDispatcher rd = request.getRequestDispatcher("/excluirCli.jsp");
                    rd.forward(request, response);
                }
            }
            } catch (Exception erro) {
             RequestDispatcher rd = request.getRequestDispatcher("/erro.jsp");
            request.setAttribute("erro", erro);
            rd.forward(request, response);
            }
                
       
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
