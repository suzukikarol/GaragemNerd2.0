/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

/**
 *
 * @author 11151100178
 */
public class Email {
	private String nomeDestinatario;
	private String emailDestinatario;
	private String assunto;
	private String mensagem;

	public void setNomeDestinatario(String nomeDestinatario) {
		this.nomeDestinatario = nomeDestinatario;
	}

	public void setEmailDestinatario(String emailDestinatario) {
		this.emailDestinatario = emailDestinatario;
	}

	public void setAssunto(String assunto) {
		this.assunto = assunto;
	}

	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}

	public boolean enviar() {
		SimpleEmail email = new SimpleEmail();

		email.setHostName("smtp.gmail.com");
		
                email.setSmtpPort(587);
                
                email.setTLS(true);
               // email.setStartTLSEnabled(true);
                
               // email.setSslSmtpPort("465");
              //  email.setSSL(true); 
                 email.setDebug(true);  
		try {
			email.addTo( emailDestinatario , nomeDestinatario );
			email.setFrom( EmailAutenticacao.email , EmailAutenticacao.nome);
			email.setSubject( assunto );
			email.setMsg( mensagem );

			System.out.println("autenticando...");
			email.setAuthenticator(new DefaultAuthenticator(EmailAutenticacao.email, EmailAutenticacao.senha) );
			System.out.println("enviando...");
			System.out.println(email.send());
			System.out.println("Email enviado!");
			
			return true;
		} catch (EmailException e) {
                    System.err.println(e.getMessage());
			e.printStackTrace();
			return false;
		}
	}    
}
