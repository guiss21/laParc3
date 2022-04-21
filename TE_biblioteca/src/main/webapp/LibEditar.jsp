<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Categorias"%>
<%@page import="com.emergentes.modelo.Libros"%>
<%
Libros lib=(Libros)request.getAttribute("lib");
List<Categorias> Categorias= (List<Categorias>)request.getAttribute("Categorias");
String tipo=(String) request.getAttribute("tipo");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%=(tipo == "new")?"Nueva":"Editar"%>Libros</h1>
        <form action="LibrosController" method="post" >
            <input type="hidden" name="tipo" value="<%=tipo%>"/>
            <table>
                <tr>
                    <td>Id</td>
                    <td><input type="text" name="id" value="<%=lib.getId() %>"/></td>
                </tr>
                 <tr>
                    <td>Titulo</td>
                    <td><input type="text"name="Categorias" value="<%=lib.getTitulo()%>"/></td>
                </tr>
                <tr>
                    <td>Autor</td>
                    <td><input type="text"name="Categorias" value="<%=lib.getAutor() %>"/></td>
                </tr>
                 <tr>
                    <td>Disponible</td>
                    <td><input type="text"name="Categorias" value="<%=lib.getDisponible() %>"/></td>
                </tr>
                 <tr>
                    <td>Categorias</td>
                    <td><select name="idcat">
                            <%
                                for(Categorias c: Categorias){
                                %>
                                <option value="<%= c.getId() %>" <%= (c.getId() == lib.getCate().getId()) ? "selected" : "" %>> 
                                        <%= c.getCategorias() %>
                                        </option>
                                        <%
                                            }
                                          %>
                                          </select>
                    </td>
               </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="procesar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
