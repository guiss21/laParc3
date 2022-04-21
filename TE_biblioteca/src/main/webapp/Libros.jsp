<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Libros"%>
<%
List<Libros> libros= (List<Libros>)session.getAttribute("biblioteca");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Libros</h1>
        <p><a href="LibrosController?op=nuevo">Nuevo</a></p>
        <table border="1">
            <tr>
            <th>Id</th>
            <th>Titulo</th>
            <th>Autor</th>
            <th>Disponible</th>
            <th>Categoria</th>
            <th></th>
            <th></th>
            </tr>
            <%
           if(libros!= null){
               for(Libros item : libros){
            %>
            <tr>
                <td><%=item.getId() %></td>  
                <td><%=item.getTitulo() %></td>  
                <td><%=item.getAutor() %></td>  
                <td><%=item.getDisponible() %></td>  
                <td><%=item.getDisponible() %></td>  
                <td><%=item.getCate() %></td>  
                <td><a href="LibrosController?op=editar=<%=item.getId()%>">Editar</a></td>  
                <td><a href="LibrosController?op=eliminar=<%=item.getId()%>">Eliminar</a></td>  
            </tr>
            <%
                }
               }
            %> 
        </table>
        <p><a href="index.jsp">ir al </a></p>
    </body>
</html>
