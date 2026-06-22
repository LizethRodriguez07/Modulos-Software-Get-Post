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
    <title>Listado de Pedidos</title>
    <!-- Vincular tu archivo CSS externo unificado -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css">
</head>
<body>

    <!-- Contenedor general -->
    <div class="table-wrapper">
        <div class="table-container">
            
            <!-- Encabezado de la Sección de Gestión de Pedidos -->
            <div class="table-header-section">
                <h2>Gestión de Pedidos</h2>
                
                
                <div class="table-actions-nav">
                    <a href="${pageContext.request.contextPath}/pedidosControlador?accion=ingresar" class="btn-table-add">Nuevo Pedido</a>
                    <a href="${pageContext.request.contextPath}/index.jsp" class="btn-table-menu">Ingresar al Menú</a>
                </div>
            </div>

            
            <div class="responsive-table-holder">
                <table class="custom-premium-table">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Fecha Pedido</th>
                            <th>Nombre Cliente</th>
                            <th>Total Pago</th>
                            <th>Medio Pago</th>
                            <th>Descripción</th>
                            <th>Teléfono</th>
                            <th>Dirección</th>
                            <th>Estado</th>
                            <th class="text-center">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            pedidosDAO pedDAO = new pedidosDAO();
                            List<pedidos> lista = pedDAO.listarpedidos();
                            for (pedidos pedid : lista) {
                        %>
                            <tr>
                                <td><strong><%= pedid.getIdP()%></strong></td>
                                <td><%= pedid.getFechaPedido()%></td>
                                <td><%= pedid.getNomCliente()%></td>
                                <td><strong>$<%= pedid.getTotalPg()%></strong></td>
                                <td><%= pedid.getMedioPago()%></td>
                                <td><%= pedid.getDescriPcion()%></td>
                                <td><%= pedid.getTeleFono()%></td>
                                <td><%= pedid.getDireCcion()%></td>
                                <td><span class="brand-tags"><%= pedid.getSelecEstado()%></span></td>
                                <td>
                                    <div class="action-buttons-group">
                                        
                                        <a href="${pageContext.request.contextPath}/pedidosControlador?accion=actualizar&idP=<%= pedid.getIdP()%>" class="btn-action-edit">Editar</a>
                                        <a href="${pageContext.request.contextPath}/pedidosControlador?accion=borrar&idP=<%= pedid.getIdP()%>" class="btn-action-delete" 
                                           onclick="return confirm('¿Estás seguro de eliminar el pedido #<%= pedid.getIdP() %> de la base de datos?')">Eliminar</a>
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
