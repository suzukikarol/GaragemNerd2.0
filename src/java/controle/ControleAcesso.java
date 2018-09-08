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
import javax.servlet.http.HttpSession;
import modelo.Usuario;
import DAO.UsuarioDAO;
import static modelo.PerfilDeAcesso.ADMINISTRADOR;

/**
 *
 * @author Alexandre
 */
public class ControleAcesso extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try{
            String acao = request.getParameter("acao");
            if(acao.equals("Entrar")){
                Usuario usuario = new Usuario();
                usuario.setLogin(request.getParameter("txtLogin"));
                usuario.setSenha(request.getParameter("txtSenha"));
                usuario.setNome(request.getParameter("txtNome"));
                
                
                UsuarioDAO usuarioDAO = new UsuarioDAO();
                Usuario usuarioAutenticado = usuarioDAO.autenticaUsuario(usuario);
                //se o usuario existe no banco de dados
                if(usuarioAutenticado !=null){
                    //cria uma sessao para o usuario
                    HttpSession sessaoUsuario = request.getSession();
                    sessaoUsuario.setAttribute("usuarioAutenticado", usuarioAutenticado);
                    /*** PARTE NOVA DEPOIS ARRUMAR ISSO AQUI ***  
                    if(usuario.getPerfil().equals(ADMINISTRADOR)){*/
                    //redireciona para a página principal
                    response.sendRedirect("principal.jsp");
                    /*}else
                        response.sendRedirect("home.jsp");*/
                }else{
                    RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                    request.setAttribute("msg","Login ou Senha estão incorretos");
                    rd.forward(request, response);
                }
            }else
                if (acao.equals("Sair")){
                    HttpSession sessaoUsuario = request.getSession();
                    sessaoUsuario.removeAttribute("usuarioAutenticado");
                    response.sendRedirect("logout.jsp");
                }
        }catch (Exception erro){
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
