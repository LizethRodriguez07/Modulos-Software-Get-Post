<%-- 
    Document   : listarProducto
    Created on : 17/04/2026, 7:26:56 p. m.
    Author     : H-P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelos.producto"%>
<%@page import="ModelosDAO.productoDAO"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Listado de Productos</title>
    <!-- CSS básico para que la tabla se vea bien -->
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        table { border-collapse: collapse; width: 100%; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 12px; text-align: left; }
        th { background-color: #4CAF50; color: white; }
        tr:nth-child(even) { background-color: #f2f2f2; }
        .btn { padding: 8px 12px; text-decoration: none; border-radius: 4px; color: white; }
        .btn-edit { background-color: #2196F3; }
        .btn-delete { background-color: #f44336; }
        .btn-add { background-color: #4CAF50; margin-bottom: 10px; display: inline-block; }
    </style>
    
</head>
<body>

    <h1>Gestión de Productos</h1>
    
    <!-- Botón para ir al formulario de agregar -->
    <a href="productoControlador?accion=ingresar" class="btn btn-add">Nuevo Producto</a>
    <a href="${pageContext.request.contextPath}/plantillaMenu/menu.jsp" class="btn btn-edit">Ingresar al Menu</a>

    <table>
        <thead>
            <tr>
                <th>Id</th>
                <th>Cantidad</th>
                <th>Marca</th>
                <th>Talla</th>
                <th>Descripcion</th>
                <th>Precio</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <%
                productoDAO producDAO = new productoDAO();
                List<producto> lista = producDAO.listarproducto();
                for (producto pro : lista) {
                    %>
                <tr>
                    <td><%= pro.getIdProducto()%></td>
                    <td><%= pro.getCantidad()%></td>
                    <td><%= pro.getMarca()%></td>
                    <td><%= pro.getTalla()%></td>
                    <td><%= pro.getDescripcion()%></td>
                    <td><%= pro.getPrecio()%></td>
                    
                    <td>
                        <!-- Enlaces que llaman al Servlet pasandole la acción y el ID -->
                        <a href="productoControlador?accion=actualizar&idproducto=<%= pro.getIdProducto()%>" class="btn btn-edit">Editar</a>
                        <a href="productoControlador?accion=borrar&idproducto=<%= pro.getIdProducto()%>" class="btn btn-delete" 
                           onclick="return confirm('¿Estás seguro de eliminar este cliente?')">Eliminar</a>
                    </td>
                </tr>
            <% } %>
        </tbody>
    </table>
    </body>
</html>
