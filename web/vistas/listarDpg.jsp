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
<%
    // Asegura que los caracteres especiales provenientes de MySQL se procesen en UTF-8
    request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Listado Detalles de Pago</title>
    <!-- vincular css - estilos.css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css">
</head>
<body>
    <!-- Contenedor general oscuro que hace juego con los formularios -->
    <div class="table-wrapper">
        <div class="table-container">
            
            <!-- Encabezado de la Sección de Gestión -->
            <div class="table-header-section">
                <h1>Gestión Detalle de Pago</h1>
                
                <!-- Grupo de botones de navegación superior -->
                <div class="table-actions-nav">
                    <a href="${pageContext.request.contextPath}/detallepagControlador?accion=ingresar" class="btn-table-add">Nuevo Detalle de Pago</a>
                    <a href="${pageContext.request.contextPath}/index.jsp" class="btn-table-menu">Ingresar al Menú</a>
                </div>
            </div>

            <!-- Contenedor con scroll horizontal automático para pantallas de celulares -->
            <div class="responsive-table-holder">
                <table class="custom-premium-table">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nombre Completo</th>
                            <th>Id Pedido</th>
                            <th>Fecha Recibido</th>
                            <th>Total Cancelado</th>
                            <th>Estado de Pago</th>
                            <th class="text-center">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            detallepagDAO dpagoDAO = new detallepagDAO();
                            List<detallepag> lista = dpagoDAO.listardetallepag();
                            for (detallepag dpg : lista) {
                        %>
                            <tr>
                                <td><strong><%= dpg.getIdPago()%></strong></td>
                                <td><%= dpg.getIdCliente()%></td>
                                <td><%= dpg.getIdPedido()%></td>
                                <td><%= dpg.getFechRecb()%></td>
                                <td><%= dpg.getTcanPago()%></td>
                                <td><%= dpg.getEstadoPago()%></td>
                                <td>
                                    <div class="action-buttons-group">
                                        <!-- Enlaces que llaman al Servlet pasando la acción y el identificador -->
                                        <a href="${pageContext.request.contextPath}/detallepagControlador?accion=actualizar&idPago=<%=dpg.getIdPago()%>" class="btn-action-edit">Editar</a>
                                        <a href="${pageContext.request.contextPath}/detallepagControlador?accion=borrar&idPago=<%= dpg.getIdPago()%>" class="btn-action-delete" 
                                           onclick="return confirm('¿Estás seguro de eliminar el pago con ID <%= dpg.getIdPago()%> de la base de datos?')">Eliminar</a>
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
