/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import modelo.Produto;
import modelo.Usuario;
import modelo.Vendas;
import util.Conexao;

/**
 *
 * @author 11151100178
 */
public class ProdutoDAO {
    private Connection conexao = null;
   

    public ProdutoDAO() {
        this.conexao = Conexao.getConexao();
    }
    
    public void Cadastrar(Produto produto) throws SQLException{
        try{
            
            String sqlQuadrinho = "INSERT INTO Quadrinho(titulo, descricao, preco, imagem, status) VALUES (?,?,?,?,?)";
            
            PreparedStatement pstmtQuadrinho = conexao.prepareStatement(sqlQuadrinho);
            pstmtQuadrinho.setString(1, produto.getTitulo());
            pstmtQuadrinho.setString(2, produto.getDescricao());          
            pstmtQuadrinho.setDouble(3, produto.getPreco());
            pstmtQuadrinho.setString(4, produto.getImagem());
            pstmtQuadrinho.setBoolean(5, produto.isStatus());
            
            pstmtQuadrinho.execute();
  
            conexao.commit();
   
        }catch (SQLException e){
             try {
                 conexao.rollback();
             } catch (SQLException ex) {
                 Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
             }
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, "Erro no cadastro: "+ e.getMessage());
        }finally{
             if (conexao != null){
             try {
                 
                 conexao.close();
             } catch (SQLException ex) {
                 Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
             }
            
            }
         }
    }
    //************** PARTE NOVA ****************
    public void CadastrarVenda(Produto produto){
        try{
            Vendas venda = new Vendas();
            String sql = "INSERT INTO Vendas(usuario, quadrinho, valor_total, data_venda) VALUES (?,?,?,?)";
            PreparedStatement pstmtVendas = conexao.prepareStatement(sql);
            pstmtVendas.setInt(1, venda.getId_usuario());
            pstmtVendas.setInt(2, venda.getId_quadrinho());
            pstmtVendas.setDouble(3, venda.getValor_total());
            pstmtVendas.setDate(4, (Date) venda.getData_venda());
            pstmtVendas.execute();
        
         conexao.commit();
   
        }catch (SQLException e){
             try {
                 conexao.rollback();
             } catch (SQLException ex) {
                 Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
             }
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, "Erro no cadastro: "+ e.getMessage());
        }finally{
             if (conexao != null){
             try {
                 
                 conexao.close();
             } catch (SQLException ex) {
                 Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
             }
            
            }
         }
    }
    public ArrayList<Produto> listar(){
        Connection conexao = null;
        ArrayList<Produto> listaproduto = new ArrayList<Produto>();
        //ArrayList<Produto> listaproduto = null; era assim
        try{
            
            conexao= Conexao.getConexao();
            
            String sql = "SELECT * FROM Quadrinho";
            PreparedStatement pstmt = conexao.prepareStatement(sql);  
            ResultSet rs = pstmt.executeQuery();
            
            //listaproduto = new ArrayList();
            while (rs.next()){
                Produto produto = new Produto();
                produto.setId(rs.getInt("id_quadrinho"));
                produto.setTitulo(rs.getString("titulo"));
                produto.setDescricao(rs.getString("descricao"));
                produto.setPreco(rs.getDouble("preco"));
                produto.setImagem(rs.getString("imagem"));
                produto.setStatus(true);

                listaproduto.add(produto);
            
            }
        }catch(SQLException e) {
            Logger.getLogger(Usuario.class.getName()).
                    log(Level.SEVERE, "Erro ao listar: " + e.getMessage());
        }finally{ //***************** new part
            try{
                if(conexao != null){
                    conexao.close();
                }
            }catch (SQLException e){
                throw new RuntimeException(e);
            }
        }        
        return listaproduto;
    }
    public Produto Consultar(Produto produto){
        Connection conexao = null;
        Produto produtoConsulta = new Produto();        
        try{            
            conexao = Conexao.getConexao();
            
            String sql = "SELECT * FROM Produto Where id=?";
            
            PreparedStatement pstmt = conexao.prepareStatement(sql);
            pstmt.setInt(1, produto.getId());            
            ResultSet rs = pstmt.executeQuery();
            
            //só vai retornar uma linha de obj
            while(rs.next()){
                
                produtoConsulta.setId(rs.getInt("id"));
                produtoConsulta.setTitulo(rs.getString("titulo"));
                produtoConsulta.setDescricao(rs.getString("descricao"));                
                produtoConsulta.setPreco(rs.getDouble("preco"));
                produtoConsulta.setImagem(rs.getString("imagem"));
                produtoConsulta.setStatus(rs.getBoolean("status"));
    
            }
   
        }catch (Exception e) {
               Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, "Erro ao listar: "+ e.getMessage());
        }  
        
        return produtoConsulta;
    }
    
        public List<Produto> buscarProduto(String txt){
        Connection conexao = null;
        List<Produto> produtos = new ArrayList<>();
        Produto produto = new Produto();
        try{            
            conexao = Conexao.getConexao();
            
            String sql = "select * from produto where titulo ilike '%"+txt+"%'";
            PreparedStatement pstmt = conexao.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            
            //só vai retornar uma linha de obj
            while(rs.next()){
                
                produto.setId(rs.getInt("id"));
                produto.setTitulo(rs.getString("titulo"));
                produto.setDescricao(rs.getString("descricao"));                
                produto.setPreco(rs.getDouble("preco"));
                produto.setImagem(rs.getString("imagem"));
                produto.setStatus(rs.getBoolean("status"));
                
                produtos.add(produto);
                   
            }
            return produtos;
        }catch (Exception e) {
               Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, "Erro ao listar: "+ e.getMessage());
        }  
        
        return null;
    }
    
    
    public void Alterar(Produto produto){
         /*
            1. Uma conexao com db ***já existe no topo
            2. Instrucao SQL
            3. Executar o SQL
            4. Fechar a conexao
        
         */
        try{
            //2
            String sqlProduto = "UPDATE Quadrinho SET titulo = ?, descricao = ?, preco = ?, imagem = ? WHERE id_quadrinho = ?";
            PreparedStatement pstmtProduto = conexao.prepareStatement(sqlProduto); //, PreparedStatement.RETURN_GENERATED_KEYS);
            pstmtProduto.setString(1, produto.getTitulo());
            pstmtProduto.setString(2, produto.getDescricao());           
            pstmtProduto.setDouble(3, produto.getPreco());
            pstmtProduto.setString(4, produto.getImagem());
            pstmtProduto.setInt(5, produto.getId());
            
            pstmtProduto.executeUpdate();
            
            //4
            conexao.close();
        }catch (Exception e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, "Erro no cadastro: " + e.getMessage());
        }
 
    }public Produto Excluir (Produto produto){
        
        Connection conexao = null;
        
        try{
            //2
            conexao = Conexao.getConexao();
            conexao.setAutoCommit(false);
            String sql = "DELETE FROM quadrinho WHERE id_quadrinho = ?";
            
            //3
            PreparedStatement pstmt = conexao.prepareStatement(sql);
            pstmt.setInt(1, produto.getId());
            
            pstmt.execute();
            
            //4
           conexao.commit();
            
        }catch(Exception e){
          try {
              conexao.rollback();
          } catch (SQLException ex) {
              Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
          }
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, "Erro no cadastro: "+ e.getMessage());
        } finally{
          try {
              conexao.close();
          } catch (SQLException ex) {
              Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
          }
       }
        return produto;
    }
    
 }
