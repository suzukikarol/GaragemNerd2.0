/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import DAO.ProdutoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Produto;

/**
 *
 * @author 11151100178, Beatriz
 */
public class ControleProduto extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try{
            //parâmetro acao
            String acao = request.getParameter("acao");
            ProdutoDAO produtodao = new ProdutoDAO();
            
            if(acao.equals("Cadastrar")){
                //recuperar os parâmetros do formulário
                String titulo = request.getParameter("txtTitulo");
                String descricao = request.getParameter("txtDescricao");
                
                double preco = Double.parseDouble(request.getParameter("txtPreco"));
                String imagem = request.getParameter("txtImagem");
                
                Produto produto = new Produto();
                produto.setTitulo(titulo);
                produto.setDescricao(descricao);                
                produto.setPreco(preco);
                produto.setImagem(imagem);
                produto.setStatus(true);
                
                
                produtodao.Cadastrar(produto);
                //resposta
                //response.getWriter().println("Cadastro realizado com sucesso!");
               
                request.setAttribute("listaprod", produtodao.listar());
                RequestDispatcher rd = request.getRequestDispatcher("/ListaProd.jsp");
                //quem vai acionar toda essa ação é o forward
                rd.forward(request, response);
            }else{
                if(acao.equals("Listar")){
                    ProdutoDAO dao = new ProdutoDAO();
                    List<Produto> listaProduto = dao.listar();
                    
                    //atribuir a lista ao request
                    request.setAttribute("listaprod", listaProduto);
                    
                    request.getRequestDispatcher("/ListaProd.jsp").forward(request, response);
                    
                }else if(acao.equals("Consultar")){
                    //pega dados da interface
                    int id = Integer.parseInt(request.getParameter("id"));
                    //instancia novo produto e passa o id para a instância
                    Produto produto = new Produto();
                    produto.setId(id);
                    //instancia a nova DAO
                    ProdutoDAO dao = new ProdutoDAO();
                    //cria lista de pessoas com nome de produtoscom nome de consultarProduto
                    //que recebe o método consultar
                    Produto consultarProduto = dao.Consultar(produto);
                    //a lista é settada com o nome de consulta
                    request.setAttribute("consulta", consultarProduto);
                    //é referenciado os dados para a jsp consultarProd q antes chamava alterarProd****
                    RequestDispatcher rd = request.getRequestDispatcher("/AlterarProd.jsp");
                    //quem vai acionar toda essa ação é o forward
                    rd.forward(request, response);
                }else if (acao.equals("Alterar")){
                    
                    
                    String titulo = request.getParameter("txtTitulo");
                    String descricao = request.getParameter("txtDescricao");           
                    double preco = Double.parseDouble(request.getParameter("txtPreco"));
                    String imagem = request.getParameter("txtImagem");
                    String id = request.getParameter("txtId");
                    
                    Produto produto = new Produto();
                    produto.setTitulo(titulo);
                    produto.setDescricao(descricao);                  
                    produto.setPreco(preco);
                    produto.setImagem(imagem);
                    produto.setId(Integer.parseInt(id));
                    
                    ProdutoDAO dao = new ProdutoDAO();
                    dao.Alterar(produto);
                    
                   /* PrintWriter out = response.getWriter();
                    out.println("Produto ALTERADO");*/
                    request.setAttribute("listaprod", dao.listar());
                    RequestDispatcher rd = request.getRequestDispatcher("/ListaProd.jsp");
                    //quem vai acionar toda essa ação é o forward
                    rd.forward(request, response);
                    
                }else if(acao.equals("Excluir")){
                    
                    String id = request.getParameter("txtId");
                    
                    
                    Produto produto = new Produto();
                    produto.setId(Integer.parseInt(id));
                    
                    ProdutoDAO dao = new ProdutoDAO();
                    dao.Excluir(produto);
                    
                    //PrintWriter out = response.getWriter();
                    //out.println("Produto Excluído!!!");        
                    RequestDispatcher rd = request.getRequestDispatcher("/excluirCli.jsp");
                    rd.forward(request, response);
                    
                    //a partir daqui parte nova
                }else if(acao.equals("listaProdutos")){
                     //monta uma lista para exibição na pagina principal
                    ArrayList<Produto> produtos = new ProdutoDAO().listar();
                    //armazena os produto na requisição
                    request.setAttribute("produtos", produtos);
                    //envia para index.jsp
                    request.getRequestDispatcher("/prateleira.jsp").forward(request, response);
                    
                    /*************************/
                }else if (acao.equals("buscaProduto")){
                    String termoBusca = request.getParameter("q");
                    ProdutoDAO dao = new ProdutoDAO();
                    
                    //monta uma lista para exibição na pagina principal
                    //ArrayList<Produto> busca = new ProdutoDAO().listar();
                }
                
            //fim da parte nova         
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
