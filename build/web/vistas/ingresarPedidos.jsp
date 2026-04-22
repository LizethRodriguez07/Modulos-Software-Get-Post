<%-- 
    Document   : ingresarPedidos
    Created on : 19/04/2026, 8:14:44 p. m.
    Author     : H-P
--%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- vincular css - estilos.css -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css">

<!DOCTYPE html>
<html> 
    <head>
    
        <title>Ingresar Pedidos</title>
<style>
    /* Contenedor principal */
    .form-container {
    max-width: 400px; margin: 50px auto; padding: 30px; background-color: #ffffff; border-radius: 12px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.1); font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;}

    h2 {
        color: #333; margin-bottom: 25px; font-weight: 600;}

    /* Estilo de las etiquetas (labels) */
    label {
        display: block; margin-bottom: 8px; color: #555; font-size: 14px; font-weight: bold; }

    /* Estilo de los inputs de texto y número */
    input[type="text"], 
    input[type="number"] {
        width: 100%; padding: 12px; margin-bottom: 20px; border: 1px solid #ddd; border-radius: 8px; box-sizing: border-box;
        /* Evita que el input se salga del contenedor */
        transition: border-color 0.3s ease; }

    input[type="text"]:focus, 
    input[type="number"]:focus {
        outline: none; border-color: #4A90E2;
    }

    /* Estilo del botón */
    input[type="submit"] {
        width: 100%; background-color: #4A90E2; color: white; padding: 12px; border: none; border-radius: 8px; font-size: 16px;
        font-weight: bold; cursor: pointer; transition: background-color 0.3s ease; }

    input[type="submit"]:hover {
        background-color: #357ABD; }
</style>
   
    </head>
    <body>
        
    <div class="form-container">
    <h2 style="text-align:center;">Ingresar Pedidos</h2>

    <form action="${pageContext.request.contextPath}/pedidosControlador" method="POST">
        
        <label>Fecha Pedidos:</label>
        <input type="text" name="fechaPedido" placeholder="Ej. 2026-03-02 17:30:56">
        
        <label>Nombre Cliente:</label>
        <input type="text" name="nomCliente" placeholder="Ej. Juan Andres Silva">

        <label>Total Cancelado:</label>
        <input type="number" name="totalPg" placeholder="0.00" step="0.01">
        
        <label>Medio Pago:</label>
        <input type="text" name="medioPago" placeholder="Ej. Nequi">
        
        <label>Descripcion</label>
        <textarea name="descriPcion" rows="3" placeholder="Cantidad, Marca, Talla, Color..."></textarea>
        
        <label>Telefono:</label>
        <input type="text" name="teleFono" placeholder="Ej. 123...">
        
        <label>Direccion:</label>
        <input type="text" name="direCcion" placeholder="Ej. Municipio, departamento Barrio">
        
        <label>Estado de Pago</label>
        <textarea name="estadoPago" rows="3" placeholder="Completado, Pendiente..."></textarea>
      
        <input type="submit" name="accion" value="Guardar">
        
        <a href="pedidosControlador?accion=listado">Cancelar</a>
    </form>
          </div>
    </body>
</html>
