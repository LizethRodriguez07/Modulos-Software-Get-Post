<%-- 
    Document   : listarPedidos
    Created on : 19/04/2026, 8:14:28 p. m.
    Author     : H-P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelos.pedidos"%>
<%@page import="ModelosDAO.pedidosDAO"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Listado de Clientes</title>
    <!-- CSS básico para que la tabla se vea bien -->
    <style>
        body { font-family: Arial, sans-serif; margin: 10px; }
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

    <h1>Gestión de Clientes</h1>
    
    <!-- Botón para ir al formulario de agregar -->
    <a href="pedidosControlador?accion=ingresar" class="btn btn-add">Nuevo Cliente</a>
    <a href="${pageContext.request.contextPath}/plantillaMenu/menu.jsp" class="btn btn-edit">Ingresar al Menu</a>

    <table>
        <thead>
            <tr>
                <th>Id</th>
                <th>Fecha Pedido</th>
                <th>Nombre Cliente</th>
                <th>Total Pago</th>
                <th>Pago</th>
                <th>Descripcion</th>
                <th>Telefono</th>
                <th>Direccion</th>
                <th>Estado</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <%
                pedidosDAO pedDAO = new pedidosDAO();
                List<pedidos> lista = pedDAO.listarpedidos();
                for (pedidos pedid : lista) {
                    %>
                <tr>
                    <td><%= pedid.getIdP()%></td>
                    <td><%= pedid.getFechaPedido()%></td>
                    <td><%= pedid.getNomCliente()%></td>
                    <td><%= pedid.getTotalPg()%></td>
                    <td><%= pedid.getMedioPago()%></td>
                    <td><%= pedid.getDescriPcion()%></td>
                    <td><%= pedid.getTeleFono()%></td>
                    <td><%= pedid.getDireCcion()%></td>
                    <td><%= pedid.getSelecEstado()%></td>
                    <td>
                        <!-- Enlaces que llaman al Servlet pasandole la acción y el ID -->
                        <a href="pedidosControlador?accion=actualizar&idP=<%= pedid.getIdP()%>" class="btn btn-edit">Editar</a>
                        <a href="pedidosControlador?accion=borrar&idP=<%= pedid.getIdP()%>" class="btn btn-delete" 
                           onclick="return confirm('¿Estás seguro de eliminar este cliente?')">Eliminar</a>
                    </td>
                </tr>
            <% } %>
        </tbody>
    </table>
    </body>
</html>
