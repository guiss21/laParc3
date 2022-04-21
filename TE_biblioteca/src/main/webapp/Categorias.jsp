<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Categorias"%>
<%
ArrayList<Categorias> categorias=(ArrayList<Categorias>)session.getAttribute("cates");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Categorias</h1>
        <p><a href="CategoriasController?op=nuevo">Nuevo</a></p>
        <table border="1">
            <tr>
            <th>Id</th>
            <th>Descripcion</th>
            <th></th>
            <th></th>
            </tr>
            <%
            for (Categorias item: categorias){
            %>
            <tr>
                <td><%=item.getId() %></td>  
                <td><%=item.getCategorias()%></td>  
                <td><a href="CategoriasController?op=editar=<%=item.getId()%>">Editar</a></td>  
                <td><a href="CategoriasController?op=eliminar=<%=item.getId()%>">Eliminar</a></td>  
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
