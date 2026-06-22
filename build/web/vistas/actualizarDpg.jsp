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
        
        <!-- Vincular archivo CSS externo -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css">
    </head>
    <body>
        
        <%
           
            detallepag dpg = (detallepag) request.getAttribute("lista");
            if (dpg == null) {
                dpg = new detallepag(); // Respaldo para evitar errores en el servidor
            }
        %>
        
        <!-- Contenedor Principal -->
        <div class="form-wrapper">
            <div class="form-container edit-mode">
                
                <!-- Encabezado del Formulario de Edición -->
                <div class="form-header">
                    <h2>
                        
                        EDITAR DETALLE PAGO N°: <%= dpg.getIdPago() != 0 ? dpg.getIdPago() : "" %>
                    </h2>
                    <p>
                        Modifique los valores de transacciones financieras y estados de los pedidos correspondientes de la tienda.
                    </p>
                </div>
                    
                <!-- FORMULARIO DE INGRESO DE DATOS -->
                <form action="${pageContext.request.contextPath}/detallepagControlador" method="POST" class="custom-form">
                    
                    
                    <input type="hidden" name="accion" value="Actualizar">
                    
                    
                    <div class="form-grid">
                        
                        <div class="input-group">
                            <label for="idPago">Id (Lectura):</label>
                            
                            <input class="input-registro" type="text" id="idPago" name="idPago" value="<%= dpg.getIdPago() %>" readonly>
                        </div>
                        
                        <div class="input-group">
                            <label for="idCliente">Nombre Completo:</label>
                            <input class="input-registro" type="text" id="idCliente" name="idCliente" value="<%= dpg.getIdCliente() != null ? dpg.getIdCliente() : "" %>" required>
                        </div>
                        
                        <div class="input-group">
                            <label for="idPedido">Id Pedido:</label>
                            <input class="input-registro" type="number" id="idPedido" name="idPedido" value="<%= dpg.getIdPedido() != null ? dpg.getIdPedido() : "" %>" required>
                        </div>
                        
                        <div class="input-group">
                            <label for="fechRecb">Fecha Recibido:</label>
                            <input class="input-registro" type="text" id="fechRecb" name="fechRecb" value="<%= dpg.getFechRecb() != null ? dpg.getFechRecb() : "" %>" required>
                        </div>
                        
                        <div class="input-group full-width">
                            <label for="tcanPago">Total Cancelado ($):</label>
                            <input class="input-registro" type="number" id="tcanPago" name="tcanPago" value="<%= dpg.getTcanPago() != null ? dpg.getTcanPago() : "" %>" step="0.01" required>
                        </div>
                        
                        <div class="input-group full-width">
                            <label for="estadoPago">Estado de Pago:</label>
                            <input class="input-registro" type="text" id="estadoPago" name="estadoPago" value="<%= dpg.getEstadoPago() != null ? dpg.getEstadoPago() : "" %>" required>
                        </div>
                        
                    </div>
                
                    <!-- Boton -->
                    <div class="form-actions">
                        
                        <button type="submit" class="btn-update">Actualizar Pago</button>
                        <a href="${pageContext.request.contextPath}/detallepagControlador?accion=listado" class="btn-cancel">Cancelar</a>
                    </div>
                    
                </form>
                
            </div>
        </div>
        
    </body>
</html>
