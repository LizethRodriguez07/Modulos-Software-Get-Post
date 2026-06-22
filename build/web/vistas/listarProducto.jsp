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
    <!-- vincular css - estilos.css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css">
</head>
<body>
    <!-- Contenedor general oscuro que hace juego con los formularios -->
    <div class="table-wrapper">
        <div class="table-container">
            
            <!-- Encabezado de la Sección de Gestión -->
            <div class="table-header-section">
                <h2>Gestión de Productos</h2>
                <div class="table-actions-nav">
                    <a href="${pageContext.request.contextPath}/productoControlador?accion=ingresar" class="btn-table-add">Nuevo Producto</a>
                    <a href="${pageContext.request.contextPath}/index.jsp" class="btn-table-menu">Ingresar al Menu</a>
                </div>
            </div>
    
            <!-- Contenedor con scroll horizontal automático para pantallas de celulares -->
            <div class="responsive-table-holder">
                <table class="custom-premium-table">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Cantidad</th>
                            <th>Marca</th>
                            <th>Talla</th>
                            <th>Descripcion</th>
                            <th>Precio</th>
                            <th class="text-center">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        productoDAO producDAO = new productoDAO();
                        List<producto> lista = producDAO.listarproducto();
                        for (producto pro : lista) {
                        %>
                            <tr>
                                <td><strong><%= pro.getIdProducto()%></strong></td>
                                <td><%= pro.getCantidad()%></td>
                                <td><%= pro.getMarca()%></td>
                                <td><%= pro.getTalla()%></td>
                                <td><%= pro.getDescripcion()%></td>
                                <td><%= pro.getPrecio()%></td>
                                <td>
                                    <div class="action-buttons-group">
                                        <!-- CORRECCIÓN: Se cambió &idproducto= por &idProducto= -->
                                        <a href="${pageContext.request.contextPath}/productoControlador?accion=actualizar&idProducto=<%= pro.getIdProducto()%>" class="btn-action-edit">Editar</a>
                                        
                                        <!-- CORRECCIÓN: Se cambió &idproducto= por &idProducto= -->
                                        <a href="${pageContext.request.contextPath}/productoControlador?accion=borrar&idProducto=<%= pro.getIdProducto()%>" class="btn-action-delete" 
                                           onclick="return confirm('¿Estás seguro de eliminar el producto <%= pro.getIdProducto()%> de la base de datos?')">Eliminar</a>
                                    </div>
                                </td>
                            </tr>
                        <% } %>
                    </tbody>
                </table>
            </div>
            
        </div>
    </div>
</body>
</html>
