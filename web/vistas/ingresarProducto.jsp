<%-- 
    Document   : ingresarProducto
    Created on : 17/04/2026, 7:27:37 p. m.
    Author     : H-P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<!-- vincular css - estilos.css -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css">

<!DOCTYPE html>
    
        <title>Ingresar Productos</title>
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
    <h2 style="text-align:center;">Ingreso de Productos</h2>

    <form action="${pageContext.request.contextPath}/productoControlador" method="POST">
        <label>Cantidad:</label>
        <input type="number" name="Cantidad" placeholder="1" min="1" required>
        
        <label>Marca:</label>
        <input type="text" name="Marca" placeholder="Ej. TENIS AIR MAX 270" required>
        
        <label>Talla:</label>
        <input type="text" name="Talla" placeholder="Ej. 37 a la 42" required>
        
        <label>Descripción</label>
        <textarea name="Descripcion" rows="3" placeholder="Detalles del producto..."></textarea>

        <label>Precio:</label>
        <input type="number" name="precio" placeholder="0.00" step="0.01" required>

        <input type="submit" name="accion" value="Guardar">
        <a href="productoControlador?accion=listado" class="btn btn-secondary">Cancelar</a>
        
    </form>
          </div>
        
    </body>
</html>
