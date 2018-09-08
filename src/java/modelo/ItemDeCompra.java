/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author 11151100178, Beatriz
 */
public class ItemDeCompra {
    private int id;
    private Produto produto;
    private int quantidade;
    private double total;

    public ItemDeCompra() {
    }

    public ItemDeCompra(int id, Produto produto, int quantidade, double total) {
        this.id = id;
        this.produto = produto;
        this.quantidade = quantidade;
        this.total = total;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Produto getProduto() {
        return produto;
    }

    public void setProduto(Produto produto) {
        this.produto = produto;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public double getTotal() {
        this.total = this.quantidade * this.produto.getPreco();
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }   
}