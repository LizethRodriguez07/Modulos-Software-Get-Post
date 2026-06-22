<%-- 
    Document   : ingresarDpg
    Created on : 19/04/2026, 8:27:46 a. m.
    Author     : H-P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<!-- vincular css - estilos.css -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css">

<!DOCTYPE html>
<html> 
    <head>
    
        <title>Ingresar Detalles de Pagos</title>
        </head>
    <body>
        <!-- Vincular único archivo CSS externo -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css">
    </head>
    <body>
        
        <!-- Contenedor Principal -->
        <div class="form-wrapper">
            <div class="form-container">
                
                <!-- Encabezado del Formulario Corregido -->
                <div class="form-header">
                    <h2>Ingresar Detalles de Pagos</h2>
                    <p>
                        Por favor ingresa los datos de la transacción en cada casilla correspondiente,
                        con el propósito de brindarle mayor seguridad, validez y un seguimiento a cada orden.
                    </p>
                </div>
                    
                <!-- FORMULARIO DE INGRESO DE DATOS -->
                <form action="${pageContext.request.contextPath}/detallepagControlador" method="POST" class="custom-form">
                    
                    <!-- Grupo del Formulario en Grid de 2 Columnas -->
                    <div class="form-grid">
                        <div class="input-group">
                            <label for="idCliente">Nombre Completo:</label>
                            <input class="input-registro" type="text" id="idCliente" name="idCliente" placeholder="Ej: Juan Andrés Silva" required>
                        </div>
                        
                        <div class="input-group">
                            <label for="idPedido">Id Pedido:</label>
                            <input class="input-registro" type="number" id="idPedido" name="idPedido" placeholder="Ej: 1045" min="1" required>
                        </div>
                        
                        <div class="input-group">
                            <label for="fechRecb">Fecha Recibido:</label>
                            <input class="input-registro" type="text" id="fechRecb" name="fechRecb" placeholder="Ej: 2026-03-02 17:30:56" required>
                        </div>
                        
                        <div class="input-group">
                            <label for="tcanPago">Total Cancelado ($):</label>
                            <input class="input-registro" type="number" id="tcanPago" name="tcanPago" placeholder="0.00" step="0.01" required>
                        </div>
                        
                        <div class="input-group full-width">
                            <label for="estadoPago">Estado de Pago:</label>
                            <input class="input-registro" type="text" id="estadoPago" name="estadoPago" placeholder="Ej: Verificado / Pendiente / Enviado" required>
                        </div>
                    </div>
                            
                    <!-- Boton -->
                    <div class="form-actions">
                        <button type="submit" name="accion" value="Guardar" class="btn-submit">Guardar Pago</button>
                        <a href="${pageContext.request.contextPath}/detallepagControlador?accion=listado" class="btn-cancel">Cancelar</a>
                    </div>
                    
                </form>
            </div>
        </div>
        
    </body>
</html>
