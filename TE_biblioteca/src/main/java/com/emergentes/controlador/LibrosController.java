package com.emergentes.controlador;

import com.emergentes.modelo.Categorias;
import com.emergentes.modelo.Libros;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "LibrosController", urlPatterns = {"/LibrosController"})
public class LibrosController extends HttpServlet {


   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String op=(request.getParameter("op").equals(""))?"listar": request.getParameter("op");
        Libros lib=new Libros();
        int id;
        HttpSession ses = request.getSession();
        List<Libros> lista =(List<Libros>) ses.getAttribute("biblioteca");
        List<Categorias> Categorias =(List<Categorias>) ses.getAttribute("cates");
        switch(op) {
            case"nuevo":
                    if(lista.size()== 0){
            lib.setId(1);
            }
            else{
                  lib.setId(lista.get(lista.size()-1).getId()+1);
                   }
                 request.setAttribute("Categorias", Categorias);
                 request.setAttribute("lib", lib);
                 request.setAttribute("tipo", "new");
                 request.getRequestDispatcher("LibEditar.jsp").forward(request, response);
                 break;
                 case"editar":
                     id=Integer.parseInt(request.getParameter("id"));
                     lib=lista.get(posNodoLibros(id,request));
                     request.setAttribute("Categorias", Categorias);
                     request.setAttribute("lib",lib);
                     request.setAttribute("tipo", "edit");
                     request.getRequestDispatcher("LibEditar.jsp").forward(request, response);
                     break;
                 case "eliminar":
                     id=Integer.parseInt(request.getParameter("id"));
                     int pos=posNodoLibros(id,request);
                     lista.remove(pos);
                     response.sendRedirect("Libros.jsp");
                     break;
                 case "listar":
                     request.setAttribute("biblioteca", lista);
                     request.getRequestDispatcher("libros.jsp");
                     break;    
    }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id=Integer.parseInt(request.getParameter("id"));
        String Titulo=request.getParameter("Titulo");
        String Autor=request.getParameter("Autor");
         int Disponible=Integer.parseInt(request.getParameter("disponible"));
         int idcat=Integer.parseInt(request.getParameter("idcat"));
        Categorias cate = NodoCategorias(idcat,request);
        String tipo = request.getParameter("tipo");
        Libros l= new Libros();
        l.setId(id);
        l.setTitulo(Titulo);
        l.setAutor(Autor);
        l.setDisponible(Disponible);
        l.setCate(cate);
        HttpSession ses = request.getSession();
        List<Libros> biblioteca = (List<Libros>)ses.getAttribute("biblioteca");
        if(tipo.equals("new")){
        biblioteca.add(l);
        }
        else{
        biblioteca.set(posNodoLibros(id,request),l);
        }
        response.sendRedirect("Libros.jsp");
        }
    public int posNodoLibros(int id, HttpServletRequest request){
    int index=-1;
     HttpSession ses = request.getSession();
     List<Libros>lista = (List<Libros>)ses.getAttribute("biblioteca");
     for(int i=0;i<lista.size();i++){
     if(lista.get(i).getId()==id){
     index = i;
     break;
     }
     }
     return index;
     }
     public int posNodoCategorias(int id, HttpServletRequest request){
         int index=-1;
     HttpSession ses = request.getSession();
     List<Categorias>lista = (List<Categorias>)ses.getAttribute("cates");
     for(int i=0;i<lista.size();i++){
     if(lista.get(i).getId()==id){
     index=i;   
     break;
     }
     }
     return index;
     }
     public Categorias NodoCategorias(int id, HttpServletRequest request){
    Categorias aux =new Categorias();
    HttpSession ses = request.getSession();
     List<Categorias>lista = (List<Categorias>)ses.getAttribute("cates");
     for(Categorias obj:lista){
     if(obj.getId()==id){
     aux = obj;
     break;
     }
     }
     return aux;
     }
    }
 
