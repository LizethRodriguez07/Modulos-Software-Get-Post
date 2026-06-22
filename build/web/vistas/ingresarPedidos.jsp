<%-- 
    Document   : ingresarPedidos
    Created on : 19/04/2026, 8:14:44 p. m.
    Author     : H-P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresar Pedidos</title>
    </head>
    <body>
       <!-- Vincular único archivo CSS externo correctamente dentro del Head -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css">
    </head>
    <body>
        
        <!-- Contenedor Principal con Fondo Oscuro Premium -->
        <div class="form-wrapper">
            <div class="form-container">
                
                <!-- Encabezado del Formulario Corregido -->
                <div class="form-header">
                    <h2>Ingresar Pedidos</h2>
                    <p>
                        Por favor ingresa los datos correspondientes a la orden de compra del cliente, 
                        con el propósito de gestionar el envío de su producto de calzado de forma correcta y oportuna.
                    </p>
                </div>
                    
                <!-- FORMULARIO DE INGRESO DE DATOS -->
                <form action="${pageContext.request.contextPath}/pedidosControlador" method="POST" class="custom-form">
                    
                    <!-- Grupo del Formulario en Grid de 2 Columnas -->
                    <div class="form-grid">
                        <div class="input-group">
                            <label for="fechaPedido">Fecha Pedido:</label>
                            <input class="input-registro" type="text" id="fechaPedido" name="fechaPedido" placeholder="Ej: 2026-03-02 17:30:56" required>
                        </div>
                        
                        <div class="input-group">
                            <label for="nomCliente">Nombre Cliente:</label>
                            <input class="input-registro" type="text" id="nomCliente" name="nomCliente" placeholder="Ej: Juan Andrés Silva" required>
                        </div>
                        
                        <div class="input-group">
                            <label for="totalPg">Total Cancelado ($):</label>
                            <input class="input-registro" type="number" id="totalPg" name="totalPg" placeholder="0.00" step="0.01" required>
                        </div>
                        
                        <div class="input-group">
                            <label for="medioPago">Medio de Pago:</label>
                            <input class="input-registro" type="text" id="medioPago" name="medioPago" placeholder="Ej: Nequi / Bancolombia / Efectivo" required>
                        </div>
                        
                        <div class="input-group">
                            <label for="teleFono">Teléfono:</label>
                            <input class="input-registro" type="text" id="teleFono" name="teleFono" placeholder="Ej: 3001234567" required>
                        </div>
                        
                        <div class="input-group">
                            <label for="direCcion">Dirección de Entrega:</label>
                            <input class="input-registro" type="text" id="direCcion" name="direCcion" placeholder="Ej: Calle, Barrio, Municipio" required>
                        </div>
                        
                        <!-- Caja de descripción ancha para detallar las zapatillas -->
                        <div class="input-group full-width">
                            <label for="descriPcion">Descripción de la Orden:</label>
                            <textarea class="input-registro" id="descriPcion" name="descriPcion" rows="3" placeholder="Detalla: Cantidad, Marca (Nike, Adidas, etc.), Talla, Color..." required></textarea>
                        </div>
                        
                        
                        <div class="input-group full-width">
                            <label for="estadoPago">Estado del Pedido / Pago:</label>
                            <input class="input-registro" type="text" id="estadoPago" name="selecEstado" placeholder="Ej: Completado / Pendiente por Despachar" required>
                        </div>
                    </div>
                    
                    <!-- Boton -->
                    <div class="form-actions">
                        <button type="submit" name="accion" value="Guardar" class="btn-submit">Guardar Pedido</button>
                        <a href="${pageContext.request.contextPath}/pedidosControlador?accion=listado" class="btn-cancel">Cancelar</a>
                    </div>
                </form>
            </div>
        </div>
        
    </body>
</html>
