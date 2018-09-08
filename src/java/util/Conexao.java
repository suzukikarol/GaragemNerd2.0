/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Alexandre
 */
public class Conexao {
     private static Connection conexao;
     public static Connection getConexao(){
        
        try{
            
            Class.forName("org.postgresql.Driver");
            
            conexao = DriverManager.getConnection("jdbc:postgresql://localhost:5432/GaragemNerd", 
                                                                            "postgres", "postgres");

        }catch(ClassNotFoundException e){
            Logger.getLogger(Conexao.class.getName()).
                    log(Level.SEVERE, "Falta de Driver de conexao: "+ e.getMessage());
        }catch(SQLException e){
             Logger.getLogger(Conexao.class.getName()).
                    log(Level.SEVERE, "Erro de conexao: "+ e.getMessage());
        }  
        return conexao;
       
    }
}
