/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import DAO.EnderecoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Endereco;

/**
 *
 * @author alunocmc
 */
public class ControleEndereco extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            String acao = request.getParameter("acao");
            Endereco endereco = new Endereco();
            if(acao.equals("Cadastrar")){
                //recupera os parâmetros
                
                String logradouro = request.getParameter("txtLogradouro");
                String cep = request.getParameter("txtCep");
                int numero = Integer.parseInt(request.getParameter("txtNumero"));
                String bairro = request.getParameter("txtBairro");
                String cidade = request.getParameter("txtCidade");
                String estado = request.getParameter("txtEstado");
                
                endereco.setLogradouro(logradouro);
                endereco.setCep(cep);
                endereco.setNumero(numero);
                endereco.setBairro(bairro);
                endereco.setCidade(cidade);
                endereco.setEstado(estado);
                
                EnderecoDAO dao = new EnderecoDAO();
                dao.cadastrarEndereco(endereco);
                
                request.setAttribute("listaEnd", dao.listar());
                
                RequestDispatcher rd = request.getRequestDispatcher("/ListaEnd.jsp");
                //forward aciona a ação
                rd.forward(request, response);
                
                                
            }else{
                if(acao.equals("Listar")){
                    EnderecoDAO dao = new EnderecoDAO();
                    List<Endereco> listaEndereco = dao.listar();
                    
                    //atribuir a lista ao request
                    request.setAttribute("listaEnd", listaEndereco);
                    request.getRequestDispatcher("/ListaEnd.jsp").forward(request, response);
                }else if (acao.equals("Consultar")){
                    //pega os dados da interface
                    int id = Integer.parseInt(request.getParameter("id"));
                    //instancia novo endereco e passa o id para instancia (feito lá em cima)
                    endereco.setId_endereco(id);
                    //instancia a dao
                    EnderecoDAO dao = new EnderecoDAO();
                    //cria lista de usuarios com nome de ConsultarEndereco
                    //que recebe o método consultar
                    Endereco enderecoConsulta = dao.Consultar(endereco);
                    //a lista é setada com o nome de consulta
                    request.setAttribute("consulta", enderecoConsulta);
                    //é referenciado os dados para a jsp alterarEndereco
                    RequestDispatcher rd = request.getRequestDispatcher("/AlterarEnd.jsp");
                    //o forward é responsável por acionar toda essa ação
                    rd.forward(request, response);
                }else if(acao.equals("Alterar")){
                    //recuperar os parâmetros
                    String id = request.getParameter("txtId_Endereco");
                    String logradouro = request.getParameter("txtLogradouro");
                    String cep = request.getParameter("txtCep");
                    String numero = request.getParameter("txtNumero");
                    String bairro = request.getParameter("txtBairro");
                    String cidade = request.getParameter("txtCidade");
                    String estado = request.getParameter("txtEstado");
                    
                    endereco.setLogradouro(logradouro);
                    endereco.setCep(cep);
                    endereco.setNumero(Integer.parseInt(numero));
                    endereco.setBairro(bairro);
                    endereco.setCidade(cidade);
                    endereco.setEstado(estado);
                    endereco.setId_endereco(Integer.parseInt(id));
                    
                    EnderecoDAO dao = new EnderecoDAO();
                    dao.Alterar(endereco);
                    //dao.setId(Integer.parseInt(id));
                    
                    //Endereco alterarEndereco = dao.Alterar(endereco);
                    
                    request.setAttribute("listaEnd", dao.listar());
                    RequestDispatcher rd = request.getRequestDispatcher("/ListaEnd.jsp");
                    //o forward aciona tudo
                    rd.forward(request, response);                     
                }else if (acao.equals("Excluir")){
                    String id = request.getParameter("txtId");
                    
                    endereco.setId_endereco(Integer.parseInt(id));
                    
                    EnderecoDAO dao = new EnderecoDAO();
                    dao.Excluir(endereco);
                    
                    RequestDispatcher rd = request.getRequestDispatcher("/excluirEnd.jsp");
                    rd.forward(request, response);
                }
            }
        }catch (Exception erro) {
             RequestDispatcher rd = request.getRequestDispatcher("/erro.jsp");
            request.setAttribute("erro", erro);
            rd.forward(request, response);
    }
    }
   
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     

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
