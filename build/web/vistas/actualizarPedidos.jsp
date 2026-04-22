<%-- 
    Document   : actualizarPedidos
    Created on : 19/04/2026, 8:15:01 p. m.
    Author     : H-P
--%>

<%@page import="java.util.List"%>
<%@page import="ModelosDAO.pedidosDAO"%>
<%@page import="Modelos.pedidos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Pedidos</title>
        
        <!-- vincular css - estilos.css -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css">
        
    </head>
    <body class="container mt-5">
        
        <div class="container">
            <div class="row">
            <div class="col-12">
        <%
                pedidosDAO pedDAO = new pedidosDAO();
                List<pedidos> lista = pedDAO.listarpedidos();
                for (pedidos pedid : lista) {
                    %>
        
        <!-- FORMULARIO DE INGRESO DE DATOS -->
        <h4 class="mb-0">Editar Detalle Pago: <%= pedid.getIdP()%></h4>
        <form action="${pageContext.request.contextPath}/pedidosControlador" method="POST">
                <label>Id:</label>
                <input class="inut-registro" type="text" name="idP" value="<%= pedid.getIdP()%>" readonly>
                
                <label>Fecha Pedidos:</label>
                <input class="inut-registro" type="text" name="fechaPedido" value="<%= pedid.getFechaPedido()%>">
                
                <label>Nombre Cliente:</label>
                <input class="inut-registro" type="text" name="nomCliente" value="<%= pedid.getNomCliente()%>">
                
                <label>Total Cancelado</label>
                <input class="inut-registro" type="text" name="totalPg" value="<%= pedid.getTotalPg()%>">
                <br>
                <label>Medio de Pago</label>
                <input class="inut-registro" type="text" name="medioPago" value="<%= pedid.getMedioPago()%>">
                
                <label>Descripcion</label>
                <input class="inut-registro" type="text" name="descriPcion" value="<%= pedid.getDescriPcion()%>">
                
                <label>Telefono</label>
                <input class="inut-registro" type="text" name="teleFono" value="<%= pedid.getTeleFono()%>">
                
                <label>Direccion</label>
                <input class="inut-registro" type="text" name="direCcion" value="<%= pedid.getDireCcion()%>">
                <br>
                <label>Estado Pago</label>
                <input class="inut-registro" type="text" name="selecEstado" value="<%= pedid.getSelecEstado()%>">
                
                <button type="submit" name="accion" values="Actualizar">Actualizar</button>
        <% } %>
        </form>
                
            </div>
        </div>
        </div>
    </body>
</html>
