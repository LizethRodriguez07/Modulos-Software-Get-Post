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
        <!-- Vincular tu archivo CSS externo -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css">
    </head>
    <body>
        
        <%
            // SOLUCIÓN: Recuperamos el objeto individual enviado por tu Servlet mediante el atributo "lista"
            pedidos pedid = (pedidos) request.getAttribute("lista");
            if (pedid == null) {
                pedid = new pedidos(); // Respaldo de seguridad para evitar errores NullPointerException
            }
        %>
        
        <!-- Contenedor Principal con Fondo Oscuro Premium -->
        <div class="form-wrapper">
            <div class="form-container edit-mode">
                
                <!-- Encabezado del Formulario de Edición -->
                <div class="form-header">
                    <h2>
                        <img src="${pageContext.request.contextPath}/img/Editar.png" alt="Editar" class="header-icon">
                        EDITAR PEDIDO: #<%= pedid.getIdP() != 0 ? pedid.getIdP() : "" %>
                        <img src="${pageContext.request.contextPath}/img/Editar.png" alt="Editar" class="header-icon">
                    </h2>
                    <p>
                        Modifique los datos de entrega, montos financieros o estados correspondientes a la orden de compra seleccionada.
                    </p>
                </div>
                    
                <!-- FORMULARIO DE INGRESO DE DATOS -->
                <form action="${pageContext.request.contextPath}/pedidosControlador" method="POST" class="custom-form">
                    
                    <!-- Grupo del Formulario en Grid de 2 Columnas -->
                    <div class="form-grid">
                        
                        <div class="input-group">
                            <label for="idP">Id (Lectura):</label>
                            <input class="input-registro" type="text" id="idP" name="idP" value="<%= pedid.getIdP() %>" readonly>
                        </div>
                        
                        <div class="input-group">
                            <label for="fechaPedido">Fecha Pedido:</label>
                            <input class="input-registro" type="text" id="fechaPedido" name="fechaPedido" value="<%= pedid.getFechaPedido() != null ? pedid.getFechaPedido() : "" %>" required>
                        </div>
                        
                        <div class="input-group">
                            <label for="nomCliente">Nombre Cliente:</label>
                            <input class="input-registro" type="text" id="nomCliente" name="nomCliente" value="<%= pedid.getNomCliente() != null ? pedid.getNomCliente() : "" %>" required>
                        </div>
                        
                        <div class="input-group">
                            <label for="totalPg">Total Cancelado ($):</label>
                            <input class="input-registro" type="number" id="totalPg" name="totalPg" value="<%= pedid.getTotalPg() != null ? pedid.getTotalPg() : "" %>" step="0.01" required>
                        </div>
                        
                        <div class="input-group">
                            <label for="medioPago">Medio de Pago:</label>
                            <input class="input-registro" type="text" id="medioPago" name="medioPago" value="<%= pedid.getMedioPago() != null ? pedid.getMedioPago() : "" %>" required>
                        </div>
                        
                        <div class="input-group">
                            <label for="teleFono">Teléfono:</label>
                            <input class="input-registro" type="text" id="teleFono" name="teleFono" value="<%= pedid.getTeleFono() != null ? pedid.getTeleFono() : "" %>" required>
                        </div>
                        
                        <div class="input-group full-width">
                            <label for="direCcion">Dirección de Entrega:</label>
                            <input class="input-registro" type="text" id="direCcion" name="direCcion" value="<%= pedid.getDireCcion() != null ? pedid.getDireCcion() : "" %>" required>
                        </div>
                        
                        <!-- Caja de descripción ancha para detallar las zapatillas -->
                        <div class="input-group full-width">
                            <label for="descriPcion">Descripción del Calzado:</label>
                            <textarea class="input-registro" id="descriPcion" name="descriPcion" rows="3" required><%= pedid.getDescriPcion() != null ? pedid.getDescriPcion() : "" %></textarea>
                        </div>
                        
                        <!-- Caja de estado con el name exacto "selecEstado" para eliminar el null definitivo -->
                       <div class="input-group full-width">
                           <label for="estadoPago">Estado del Pedido / Pago:</label>
                           <!-- SOLUCIÓN: Cambiar name="selecEstado" por name="estadoPago" -->
                           <input class="input-registro" type="text" id="estadoPago" name="estadoPago" value="<%= pedid.getSelecEstado() != null ? pedid.getSelecEstado() : "" %>" required>
                           </div>
                        
                    </div>
                
                    <!-- Botones de Acción Estilizados -->
                    <div class="form-actions">
                        <button type="submit" name="accion" value="Actualizar" class="btn-update">Actualizar Pedido</button>
                        <a href="${pageContext.request.contextPath}/pedidosControlador?accion=listado" class="btn-cancel">Cancelar</a>
                    </div>
                    
                </form>
                
            </div>
        </div>
        
    </body>
</html>
