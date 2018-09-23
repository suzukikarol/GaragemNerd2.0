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
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Produto;

/**
 *
 * @author 11151100178
 */
@WebServlet(name = "BuscaProduto", urlPatterns = {"/BuscaProduto"})
public class BuscaProduto extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       ProdutoDAO prodDAO = new ProdutoDAO();
       String termoBusca = request.getParameter("termoBusca");
       List<Produto> produtosBusca;
       
       produtosBusca = new ArrayList(prodDAO.buscarProduto(termoBusca));
       
     request.setAttribute("produtosBusca", produtosBusca);
     request.getRequestDispatcher("produto.jsp").forward(request, response);
      
       
       
       












//String termoBusca = request.getParameter("q");
        
        //Produto p = new Produto();
        //p = p.pesquisarProduto(termoBusca);
        
      //     if (p!=null) {
      //      request.setAttribute("produto", p);
      //     request.getRequestDispatcher("produto.jsp").forward(request, response);
      //  } else {
      //      response.sendRedirect("erro.jsp");
      //  }    
    }

}
