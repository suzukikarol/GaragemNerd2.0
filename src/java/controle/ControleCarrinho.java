/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import DAO.ProdutoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.CarrinhoDeCompra;
import modelo.ItemDeCompra;
import modelo.Produto;
import modelo.Vendas;

/**
 *
 * @author 11151100178, Beatriz
 */
public class ControleCarrinho extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        try{
            String acao = request.getParameter("acao");

            if(acao.equals("addProduto")){
                //recupera o id do produto
                int idProduto = Integer.parseInt(request.getParameter("idProduto"));
                //flag para controle de inserção de novos produtos no carrinho
                boolean existe = false; 
                //recupera a sessão pertencente ao request
                HttpSession sessao = request.getSession();                
                //recupera um carrinho de produtos da sessão 
                //se não existe um carrinho na sessão o valor será igual a null
                CarrinhoDeCompra carrinho = (CarrinhoDeCompra)sessao.getAttribute("carrinho");                
               //verifica se já existe um carrinho na sessão
               if(carrinho == null){
                   //cria um carrinho
                   carrinho = new CarrinhoDeCompra();
                   sessao.setAttribute("carrinho", carrinho);
                   
               }
               //verifica se o produto existe no carrinho
               if(carrinho.getItens()!= null){
                   for(ItemDeCompra item : carrinho.getItens()){
                       if(item.getProduto().getId() == idProduto){
                       //incrementa a quantidade
                       item.setQuantidade(item.getQuantidade()+1);
                       
                        existe = true;
                       }
                   }
               }
               //se não existe o item ou produto, cria um novo
               if(existe == false){
                   //encontra o produto no banco
                   Produto produto = new Produto();
                   produto.setId(idProduto); 
                   
                   Produto produtoConsultado = new ProdutoDAO().Consultar(produto);
                   ProdutoDAO dao = new ProdutoDAO();
                   dao.CadastrarVenda(produtoConsultado);
                   
                   //cria um novo item
                   ItemDeCompra novoItem = new ItemDeCompra();
                   novoItem.setProduto(produtoConsultado);
                   novoItem.setQuantidade(1);
                   //adiciona novo item
                   carrinho.addNovoItem(novoItem);
               }
               
               //carrega a página do carrinho de compras
               request.getRequestDispatcher("/carrinho.jsp").forward(request, response);
               
            }//fim addProduto
            else if(acao.equals("removeProduto")){
                //recupera a sessão pertencente ao request
                HttpSession sessao = request.getSession();
                
                //recupera um carrinho de produtos da sessão
                CarrinhoDeCompra carrinho = (CarrinhoDeCompra)sessao.getAttribute("carrinho");
                
                //recupera o id do produto
                int id = Integer.parseInt(request.getParameter("idProduto"));
                ItemDeCompra itemRemove = new ItemDeCompra();
                Produto prodRemove = new Produto();
                prodRemove.setId(id);
                itemRemove.setProduto(prodRemove);
                
                carrinho.removerItem(itemRemove);
                //carrega a página do carrinho de compras
                request.getRequestDispatcher("/carrinho.jsp").forward(request, response);
            }else if(acao.equals("cancelaCompra")){
                //recupera a sessão pertencente ao request
                HttpSession sessao = request.getSession();
                
                //remove o carrinho da sessao
                sessao.removeAttribute("carrinho");
                
                //redireciona para página principal *****mudar aqui o caminho***
                response.sendRedirect("prateleira.jsp");
            } else if(acao.equals("finalizarcompra")){
                HttpSession sessao = request.getSession();
                Vendas venda = new Vendas();
                /*eu tenho q verificar se a pessoa já está logada no perfil dela, se não 
                estiver eu tenho q direcionar para página de cadastro de cliente e iniciar 
                a sessão e linkar com os dados do carrinho para enfim finalizar a compra*/
                if (venda != null){
                    venda.setId_usuario(0);
                }
            }
        }catch(Exception erro){
            request.setAttribute("erro", erro);
            request.getRequestDispatcher("/erro.jsp").forward(request, response);
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
/*//encontra o produto no banco
                   Produto produto = new Produto();
                   produto.setId(idProduto); 
                   //produto.setTitulo(titulo);
                   ProdutoDAO dao = new ProdutoDAO();
                   dao.Consultar(produto);*/