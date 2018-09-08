/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author Garagem Nerd
 */
public class Usuario {
    private int id;
    private String nome;
    private String rg;
    private String cpf;
    private String dtnasc;
    private String telefone;
    private String email;
    private String Login;
    private String Senha;
    private PerfilDeAcesso perfil;
    private boolean status;

    public Usuario() {
    }

    public Usuario(int id, String nome, String rg, String cpf, String dtnasc, String telefone, String email, String Login, String Senha, PerfilDeAcesso perfil, boolean status) {
        this.id = id;
        this.nome = nome;
        this.rg = rg;
        this.cpf = cpf;
        this.dtnasc = dtnasc;
        this.telefone = telefone;
        this.email = email;
        this.Login = Login;
        this.Senha = Senha;
        this.perfil = perfil;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getDtnasc() {
        return dtnasc;
    }

    public void setDtnasc(String dtnasc) {
        this.dtnasc = dtnasc;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLogin() {
        return Login;
    }

    public void setLogin(String Login) {
        this.Login = Login;
    }

    public String getSenha() {
        return Senha;
    }

    public void setSenha(String Senha) {
        this.Senha = Senha;
    }

    public PerfilDeAcesso getPerfil() {
        return perfil;
    }

    public void setPerfil(PerfilDeAcesso perfil) {
        this.perfil = perfil;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

   
}
