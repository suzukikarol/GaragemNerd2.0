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
import modelo.PerfilDeAcesso;
import modelo.Usuario;
import util.Conexao;

/**
 *
 * @author Alexandre
 */
public class UsuarioDAO {
        
      private static final String CADASTRA_NOVO_USUARIO = "INSERT INTO usuario (nome, rg, cpf, dtnasc, tel, email, login, senha,perfil, status) VALUES (?,?,?,?,?,?,?,?,?,?)";
      private static final String AUTENTICA_USUARIO = "SELECT * FROM usuario WHERE login=?AND senha=?";
      private static final String LISTAR_CLIENTES = "SELECT * FROM usuario";
      private static final String CONSULTAR = "SELECT * FROM usuario WHERE usuario.id = ?";
      private static final String ALTERAR = "UPDATE Usuario SET nome = ? , rg = ?, cpf = ?, dtnasc = ?, tel = ?, email = ?, login = ?, senha = ?, status = ? WHERE id = ?";
      private static final String EXCLUIR = "DELETE FROM usuario WHERE id = ?";
      
      
public void cadastraNovoUsuario(Usuario usuario) {
    Connection conexao = null;
    PreparedStatement pstmt = null;
     try {
    conexao = Conexao.getConexao();
    pstmt = conexao.prepareStatement(CADASTRA_NOVO_USUARIO);
    pstmt.setString(1, usuario.getNome());
    pstmt.setString(2, usuario.getRg());
    pstmt.setString(3, usuario.getCpf());
    pstmt.setString(4, usuario.getDtnasc());
    pstmt.setString(5, usuario.getTelefone());
    pstmt.setString(6, usuario.getEmail());
    pstmt.setString(7, usuario.getLogin());
    pstmt.setString(8, usuario.getSenha());
    pstmt.setString(9, usuario.getPerfil().toString());
    pstmt.setBoolean(10, usuario.isStatus());
    pstmt.execute();
    
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


    public Usuario autenticaUsuario(Usuario usuario) {
        Usuario usuarioAutenticado = null;
        Connection conexao = null;  
        PreparedStatement pstmt = null;
        ResultSet rsUsuario = null;
        try {
        conexao = Conexao.getConexao();
        pstmt = conexao.prepareStatement(AUTENTICA_USUARIO);
        pstmt.setString(1, usuario.getLogin());
        pstmt.setString(2, usuario.getSenha());
        rsUsuario = pstmt.executeQuery();
        if (rsUsuario.next()) {
        usuarioAutenticado = new Usuario();
        usuarioAutenticado.setLogin(rsUsuario.getString("login"));
        usuarioAutenticado.setSenha(rsUsuario.getString("senha"));
        usuarioAutenticado.setNome(rsUsuario.getString("nome"));
        usuarioAutenticado.setPerfil(PerfilDeAcesso.valueOf(rsUsuario.getString("perfil")));
         }
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
        return usuarioAutenticado;
        
    }
    
    public List<Usuario> listar() {
        List<Usuario> listaUsuario = null;
        try{
            Connection conexao = Conexao.getConexao();
            PreparedStatement pstmt = conexao.prepareStatement(LISTAR_CLIENTES);
            ResultSet rs = pstmt.executeQuery();
            
            listaUsuario = new ArrayList();
            while (rs.next()) {
                Usuario usuario = new Usuario();
                usuario.setId(rs.getInt("id"));
                usuario.setNome(rs.getString("nome"));
                usuario.setRg(rs.getString("rg"));
                usuario.setCpf(rs.getString("cpf"));
                usuario.setDtnasc(rs.getString("dtnasc"));
                usuario.setTelefone(rs.getString("tel"));
                usuario.setEmail(rs.getString("email"));
                usuario.setLogin(rs.getString("Login"));
                usuario.setSenha(rs.getString("senha"));
                //usuario.setPerfil(rs.getString("perfil"));
                usuario.setStatus(true);
                //usuario.setEndereco(endereco);
         
                listaUsuario.add(usuario);   
            }
            
        } catch (SQLException e){
            Logger.getLogger(Usuario.class.getName()).log(Level.SEVERE, "Erro ao listar: " + e.getMessage());
        }
        
        return listaUsuario;
    }
 
    public Usuario Consultar (Usuario usuario){
        
        Usuario usuarioConsulta = new Usuario();
        
        try{
            Connection conexao = Conexao.getConexao();
            PreparedStatement pstmt = conexao.prepareStatement(CONSULTAR);
            pstmt.setInt(1, usuario.getId());
            
            ResultSet rs = pstmt.executeQuery();
            
            while(rs.next()){
               // ArrayList<Endereco> teste = new ArrayList<>();
                usuarioConsulta.setId(rs.getInt("id"));
                usuarioConsulta.setNome(rs.getString("nome"));
                usuarioConsulta.setRg(rs.getString("rg"));
                usuarioConsulta.setCpf(rs.getString("cpf"));
                usuarioConsulta.setDtnasc(rs.getString("dtnasc"));
                usuarioConsulta.setTelefone(rs.getString("tel"));
                usuarioConsulta.setEmail(rs.getString("email"));
                usuarioConsulta.setLogin(rs.getString("login"));
                usuarioConsulta.setSenha(rs.getString("senha"));
                usuarioConsulta.setStatus(rs.getBoolean("status"));
                
                //usuarioConsulta.add(usuario);
            }
            
        }catch (Exception e){
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, "Erro ao listar: "+ e.getMessage());
            
        }
        
        return usuarioConsulta;
    }
    
    
    public Usuario Alterar (Usuario usuario){
        /*
           1. Uma conexao com db ***já existe no topo
            2. Instrucao SQL
            3. Executar o SQL
            4. Fechar a conexao  
        */
        try{
            Connection conexao = Conexao.getConexao();
             PreparedStatement pstmt = conexao.prepareStatement(ALTERAR);
             pstmt.setString(1, usuario.getNome());
             pstmt.setString(2,usuario.getRg());
             pstmt.setString(3,usuario.getCpf());
             pstmt.setString(4, usuario.getDtnasc());
             pstmt.setString(5, usuario.getTelefone());
             pstmt.setString(6, usuario.getEmail());
             pstmt.setString(7, usuario.getLogin());
             pstmt.setString(8, usuario.getSenha());
             pstmt.setBoolean(9, true);
             pstmt.setInt(10, usuario.getId());
             
             int retorno = pstmt.executeUpdate();
             
             if (retorno > 0) {
                System.out.println("Deu certo");
            } else {
                System.out.println("NÃO FOI ");
                System.out.println(pstmt);
            }
             
             conexao.close();
             return usuario;
        }catch (SQLException sql){
            System.out.println(sql);
            return null;
        }
    }
    
    public Usuario Excluir (Usuario usuario){
        Connection conexao = null;
        try{
            
            conexao = Conexao.getConexao();
            conexao.setAutoCommit(false);
            PreparedStatement pstmt = conexao.prepareStatement(EXCLUIR);
            pstmt.setInt(1, usuario.getId());
            pstmt.execute();
            
            conexao.commit();
        }catch (Exception e){
            try{
                conexao.rollback();
            }catch (SQLException ex){
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, "Erro no cadastro: "+ e.getMessage());
        } finally{
            try{
                conexao.close();
            }catch (SQLException ex) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return usuario;
    }
    //SELECT * FROM usuario INNER JOIN endereco on usuario.id_usuario= endereco.id_endereco WHERE id_usuario = ? 
    //private static final String CONSULTAR = "SELECT * FROM usuario INNER JOIN endereco on usuario.id = endereco.id_endereco WHERE usuario.id = ?";
}
