<%@page import="com.emergentes.modelo.Categorias"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Libros"%>
<%
if(session.getAttribute("biblioteca")== null){
ArrayList<Libros> lisaux= new ArrayList<Libros>();
session.setAttribute("biblioteca",lisaux);
}
if(session.getAttribute("cates")==null){
ArrayList<Categorias> liscat= new ArrayList<Categorias>();
liscat.add(new Categorias(001,"Historia"));
liscat.add(new Categorias(002,"Psicologia"));
liscat.add(new Categorias(003,"Filosofia"));
liscat.add(new Categorias(004,"Medicina"));
session.setAttribute("cates", liscat);
}
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Biblioteca</h1>
        <ul>
            <li><a href="Libros.jsp">Libros</a></li>
            <li><a href="Categorias.jsp">Categorias</a></li>
        </ul>
    </body>
</html>
