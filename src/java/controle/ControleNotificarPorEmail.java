/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Email;
import modelo.Usuario;

/**
 *
 * @author 11151100178, Beatriz
 */
public class ControleNotificarPorEmail extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
        Email email = new Email();
        Usuario usuario = new Usuario();
        email.setNomeDestinatario(usuario.getNome());
        email.setEmailDestinatario(usuario.getEmail());
        email.setAssunto("Ofertas de final de semana");
        email.setMensagem("Olá, não deixe de aproveitar as ofertas desse final de semana, todos os quadrinhos com 20% de desconto. Corre lá");
        if (email.enviar()) {
            response.getWriter().println("Enviado com sucesso");
        }else {
            response.getWriter().println("Nao enviou");
        }
    }

}
