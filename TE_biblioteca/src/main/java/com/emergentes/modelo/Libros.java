package com.emergentes.modelo;
public class Libros {
    private int id;
    private String titulo;
    private String autor;
    private int disponible;
    private Categorias cate;

    public Libros() {
    }
    public Libros(int id, String titulo, String autor, int disponible, Categorias cate) {
    this.id = id;
    this.titulo = titulo;
    this.autor = autor;
    this.disponible = disponible;
    this.cate = cate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public int getDisponible() {
        return disponible;
    }

    public void setDisponible(int disponible) {
        this.disponible = disponible;
    }

    public Categorias getCate() {
        return cate;
    }

    public void setCate(Categorias cate) {
        this.cate = cate;
    }
    
}
