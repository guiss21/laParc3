<%@page import="com.emergentes.modelo.Categorias"%>
<%
Categorias item = (Categorias) request.getAttribute("item");
String tipo=(String)request.getAttribute("tipo");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%=(tipo == "new")?"Nueva":"Editar"%>Categorias</h1>
        <form action="CategoriasController" method="post" >
            <input type="hidden" name="tipo" value="<%=tipo%>"/>
            <table>
                <tr>
                    <td>Id</td>
                    <td><input type="text" name="id" value="<%=item.getId()%>"/></td>
                </tr>
                <tr>
                    <td>Categorias</td>
                    <td><input type="text"name="Categorias" value="<%=item.getCategorias() %>"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" ></td>
                </tr>
            </table>
        </form>
    </body>
</html>
