<%-- 
    Document   : actualizarProducto
    Created on : 17/04/2026, 7:27:24 p. m.
    Author     : H-P
--%>

<%@page import="java.util.List"%>
<%@page import="ModelosDAO.productoDAO"%>
<%@page import="Modelos.producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Actualizar Producto</title>
    <!-- Vincular CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css">
</head>
<body>
    <!-- Contenedor Principal -->
    <div class="form-wrapper">
        <div class="form-container edit-mode">
            
            <% 
                producto pro = (producto) request.getAttribute("lista");
                if (pro == null) {
                    pro = new producto();
                }
            %>

            <!-- Encabezado del Formulario -->
            <div class="form-header">
                <h2>Editar Producto</h2>
                <p>Modifique la información del producto en las casillas correspondientes.</p>
            </div>

            <!-- Formulario de Actualización -->
            <form action="${pageContext.request.contextPath}/productoControlador" method="POST" class="custom-form">
                
                <!-- Grid de Formulario (2 Columnas) -->
                <div class="form-grid">
                    <div class="input-group">
                        <label for="idproducto">Id (Lectura):</label>
                        <!-- CORRECCIÓN: Se cambió name="idproducto" por name="idProducto" para que el controlador lo reciba correctamente -->
                        <input class="input-registro" type="text" id="idproducto" name="idProducto" value="<%= pro.getIdProducto() %>" readonly>
                    </div>
                    
                    <div class="input-group">
                        <label for="Cantidad">Cantidad:</label>
                        <input class="input-registro" type="text" id="Cantidad" name="Cantidad" value="<%= pro.getCantidad() %>">
                    </div>
                    
                    <div class="input-group">
                        <label for="Marca">Marca:</label>
                        <input class="input-registro" type="text" id="Marca" name="Marca" value="<%= pro.getMarca() %>">
                    </div>
                    
                    <div class="input-group">
                        <label for="Talla">Talla:</label>
                        <input class="input-registro" type="text" id="Talla" name="Talla" value="<%= pro.getTalla() %>">
                    </div>
                    
                    <div class="input-group">
                        <label for="Descripcion">Descripción:</label>
                        <input class="input-registro" type="text" id="Descripcion" name="Descripcion" value="<%= pro.getDescripcion() %>">
                    </div>
                    
                    <div class="input-group">
                        <label for="precio">Precio:</label>
                        <input class="input-registro" type="text" id="precio" name="precio" value="<%= pro.getPrecio() %>">
                    </div>
                </div>

                <!-- Botones de Acción -->
                <div class="form-actions">
                    <button type="submit" name="accion" value="Actualizar" class="btn-update">Actualizar Producto</button>
                    <!-- CORRECCIÓN: Redirección al controlador en lugar de ir directo al JSP para no perder los datos del listado -->
                    <a href="${pageContext.request.contextPath}/productoControlador?accion=listado" class="btn-cancel">Cancelar</a>
                </div>
                
            </form>
            
        </div>
    </div>
</body>
</html>
