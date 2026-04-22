<%-- 
    Document   : actualizarDpg
    Created on : 18/04/2026, 10:12:41 p. m.
    Author     : H-P
--%>

<%@page import="java.util.List"%>
<%@page import="ModelosDAO.detallepagDAO"%>
<%@page import="Modelos.detallepag"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Detalle Pago</title>
        
        <!-- vincular css - estilos.css -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css">
        
    </head>
    <body class="container mt-5">
        
        <div class="container">
            <div class="row">
            <div class="col-12">
        <%
                detallepagDAO dpagoDAO = new detallepagDAO();
                List<detallepag> lista = dpagoDAO.listardetallepag();
                for (detallepag dpg : lista) {
                    %>
        
        <!-- FORMULARIO DE INGRESO DE DATOS -->
        <h4 class="mb-0">Editar Detalle Pago: <%= dpg.getIdPago()%></h4>
        <form action="${pageContext.request.contextPath}/detallepagControlador" method="POST">
                <label>Id:</label>
                <input class="inut-registro" type="text" name="idPago" value="<%= dpg.getIdPago()%>" readonly>
                
                <label>Nombre Completo</label>
                <input class="inut-registro" type="text" name="idCliente" value="<%= dpg.getIdCliente()%>">
                <br>
                <label>Id Pedido</label>
                <input class="inut-registro" type="text" name="idPedido" value="<%= dpg.getIdPedido()%>">
                
                <label>Fecha Recibido</label>
                <input class="inut-registro" type="text" name="fechRecb" value="<%= dpg.getFechRecb()%>">
                
                <label>Total Cancelado</label>
                <input class="inut-registro" type="text" name="tcanPago" value="<%= dpg.getTcanPago()%>">
                
                <label>Estado de Pago</label>
                <input class="inut-registro" type="text" name="estadoPago" value="<%= dpg.getEstadoPago()%>">
                
                <button type="submit" name="accion" values="Actualizar">Actualizar</button>
        <% } %>
        </form>
                
            </div>
        </div>
        </div>
    </body>
</html>
