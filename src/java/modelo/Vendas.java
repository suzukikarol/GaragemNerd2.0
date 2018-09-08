/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.Date;

/**
 *
 * @author beatr
 */
public class Vendas {
    private int id;
    private int id_usuario;
    private int id_quadrinho;
    private double valor_total;
    private Date data_venda;

    public Vendas() {
    }

    public Vendas(int id, int id_usuario, int id_quadrinho, double valor_total, Date data_venda) {
        this.id = id;
        this.id_usuario = id_usuario;
        this.id_quadrinho = id_quadrinho;
        this.valor_total = valor_total;
        this.data_venda = data_venda;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public int getId_quadrinho() {
        return id_quadrinho;
    }

    public void setId_quadrinho(int id_quadrinho) {
        this.id_quadrinho = id_quadrinho;
    }

    public double getValor_total() {
        return valor_total;
    }

    public void setValor_total(double valor_total) {
        this.valor_total = valor_total;
    }

    public Date getData_venda() {
        return data_venda;
    }

    public void setData_venda(Date data_venda) {
        this.data_venda = data_venda;
    }

}