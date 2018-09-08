/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Endereco;
import modelo.Endereco;
import util.Conexao;

/**
 *
 * @author alunocmc
 */
public class EnderecoDAO {
    
    private static final String CADASTRA_ENDERECO = "INSERT INTO endereco(logradouro, cep, numero, bairro, cidade, estado VALUES (?,?,?,?,?,?)";
    private static final String LISTA_ENDERECO = "SELECT * FROM endereco";
    private static final String CONSULTAR = "SELECT * FROM endereco WHERE endereco.id_endereco = ?";
    private static final String ALTERAR = "UPDATE Endereco SET logradouro = ?,cep =?, numero = ?,bairro = ?, cidade = ?, estado = ?   where id_endereco = ?";
    private static final String EXCLUIR = "DELETE FROM endereco WHERE id_endereco";
    
public void cadastrarEndereco(Endereco endereco) {
    Connection conexao = null;
    PreparedStatement pstmt = null;
     try {
    conexao = Conexao.getConexao();
    pstmt = conexao.prepareStatement(CADASTRA_ENDERECO);
    pstmt.setString(1, endereco.getLogradouro());
    pstmt.setString(2, endereco.getCep());
    pstmt.setInt(3, endereco.getNumero());
    pstmt.setString(4, endereco.getBairro());
    pstmt.setString(5, endereco.getCidade());
    pstmt.setString(6, endereco.getEstado());
    pstmt.execute();
    
    conexao.commit();
    
    } catch (SQLException sqlErro) {
    throw new RuntimeException(sqlErro);
     } finally {
     if (conexao != null) {
        try {
            conexao.close();
            } catch (SQLException ex) {
           throw new RuntimeException(ex);
            }
        }
     }
}
   public List<Endereco> listar() {
        List<Endereco> listaEndereco = null;
        try{
            Connection conexao = Conexao.getConexao();
            PreparedStatement pstmt = conexao.prepareStatement(LISTA_ENDERECO);
            ResultSet rs = pstmt.executeQuery();
            
            listaEndereco = new ArrayList();
            while (rs.next()) {
                Endereco endereco = new Endereco();
                endereco.setId_endereco(rs.getInt("id_endereco"));
                endereco.setLogradouro(rs.getString("logradouro"));
                endereco.setCep(rs.getString("cep"));
                endereco.setNumero(rs.getInt("numero"));
                endereco.setBairro(rs.getString("bairro"));
                endereco.setCidade(rs.getString("cidade"));
                endereco.setEstado(rs.getString("estado"));
                
                //endereco.setEndereco(endereco);
         
                listaEndereco.add(endereco);    
                
            }
            
        } catch (SQLException e){
            Logger.getLogger(Endereco.class.getName()).log(Level.SEVERE, "Erro ao listar: " + e.getMessage());
        }
        
        return listaEndereco;
    }
 
    public Endereco Consultar (Endereco endereco){
        
        Endereco enderecoConsulta = new Endereco();
        
        try{
            Connection conexao = Conexao.getConexao();
            PreparedStatement pstmt = conexao.prepareStatement(CONSULTAR);
            pstmt.setInt(1, endereco.getId_endereco());
            
            ResultSet rs = pstmt.executeQuery();
            
            while(rs.next()){
                //ArrayList<Endereco> teste = new ArrayList<>();
                enderecoConsulta.setId_endereco(rs.getInt("id_endereco"));         
                enderecoConsulta.setLogradouro(rs.getString("logradouro"));
                enderecoConsulta.setCep(rs.getString("cep"));
                enderecoConsulta.setNumero(rs.getInt("numero"));
                enderecoConsulta.setBairro(rs.getString("bairro"));
                enderecoConsulta.setCidade(rs.getString("cidade"));
                enderecoConsulta.setEstado(rs.getString("estado"));
                
            }
            
        }catch (Exception e){
            Logger.getLogger(EnderecoDAO.class.getName()).log(Level.SEVERE, "Erro ao listar: "+ e.getMessage());
            
        }
        
        return enderecoConsulta;
    }
    
    
    public Endereco Alterar (Endereco endereco){
        /*
           1. Uma conexao com db ***já existe no topo
            2. Instrucao SQL
            3. Executar o SQL
            4. Fechar a conexao        
        */
        try{
            Connection conexao = Conexao.getConexao();
             PreparedStatement pstmt = conexao.prepareStatement(ALTERAR);
             pstmt.setString(1, endereco.getLogradouro());
             pstmt.setString(2, endereco.getCep());
             pstmt.setInt(3, endereco.getNumero());
             pstmt.setString(4, endereco.getBairro());
             pstmt.setString(5, endereco.getCidade());
             pstmt.setString(6, endereco.getEstado());
             pstmt.setInt(7, endereco.getId_endereco());

             //pstmt.executeUpdate();
             
             int retorno = pstmt.executeUpdate();
             
             if (retorno > 0) {
                System.out.println("Deu certo");
            } else {
                System.out.println("NÃO FOI ");
                System.out.println(pstmt);
            }
             
             conexao.close();
             return endereco;
        }catch (SQLException sql){
            System.out.println(sql);
            return null;
        }
    }
    
    public Endereco Excluir (Endereco endereco){
        Connection conexao = null;
        try{            
            conexao = Conexao.getConexao();
            conexao.setAutoCommit(false);
            PreparedStatement pstmt = conexao.prepareStatement(EXCLUIR);
            pstmt.setInt(1, endereco.getId_endereco());
            pstmt.execute();
            
            conexao.commit();
        }catch (Exception e){
            try{
                conexao.rollback();
            }catch (SQLException ex){
                Logger.getLogger(EnderecoDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
                Logger.getLogger(EnderecoDAO.class.getName()).log(Level.SEVERE, "Erro no cadastro: "+ e.getMessage());
        } finally{
            try{
                conexao.close();
            }catch (SQLException ex) {
                Logger.getLogger(EnderecoDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return endereco;
    } 
}
