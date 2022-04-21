package com.emergentes.modelo;
public class Categorias {
    private int id;
    private String categorias;

    public Categorias() {
        
    }
    public Categorias(int id,String categorias) {
        this.id = id;
        this.categorias = categorias;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCategorias() {
        return categorias;
    }

    public void setCategorias(String categorias) {
        this.categorias = categorias;
    }
    
    
}
