<%-- 
    Document   : listarDpg
    Created on : 18/04/2026, 10:02:57 p. m.
    Author     : H-P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelos.detallepag"%>
<%@page import="ModelosDAO.detallepagDAO"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Listado de Productos</title>
    <!-- CSS básico para que la tabla se vea bien -->
    <style>
        body {background-color: #ffffff; font-family: Arial, sans-serif; margin: 20px; }
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

    <h1>Gestión Detalle de Pago</h1>
    
    <!-- Botón para ir al formulario de agregar -->
    <a href="detallepagControlador?accion=ingresar" class="btn btn-add">Nuevo Detalle de Pago</a>
    <a href="${pageContext.request.contextPath}/plantillaMenu/menu.jsp" class="btn btn-edit">Ingresar al Menu</a>

    <table>
        <thead>
            <tr>
                <th>Id</th>
                <th>Nombre Completo</th>
                <th>Id Pedido</th>
                <th>Fecha Recibido</th>
                <th>Total Cancelado</th>
                <th>Estado de Pago</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <%
                detallepagDAO dpagoDAO = new detallepagDAO();
                List<detallepag> lista = dpagoDAO.listardetallepag();
                for (detallepag dpg : lista) {
                    %>
                <tr>
                    <td><%= dpg.getIdPago()%></td>
                    <td><%= dpg.getIdCliente()%></td>
                    <td><%= dpg.getIdPedido()%></td>
                    <td><%= dpg.getFechRecb()%></td>
                    <td><%= dpg.getTcanPago()%></td>
                    <td><%= dpg.getEstadoPago()%></td>
                    
                    <td>
                        <!-- Enlaces que llaman al Servlet pasandole la acción y el ID -->
                        <a href="detallepagControlador?accion=actualizar&idPago=<%= dpg.getIdPago()%>" class="btn btn-edit">Editar</a>
                        <a href="detallePagControlador?accion=borrar&idPago=<%= dpg.getIdPago()%>" class="btn btn-delete" 
                           onclick="return confirm('¿Estás seguro de eliminar este cliente?')">Eliminar</a>
                    </td>
                </tr>
            <% } %>
        </tbody>
    </table>
    </body>
</html>
