<%-- 
    Document   : ingresarProducto
    Created on : 17/04/2026, 7:27:37 p. m.
    Author     : H-P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Publicar Producto en Inventario</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css">
</head>
<body>
    
    <div class="form-wrapper">
        <div class="form-container">
            
            <div class="form-header">
                <h2>Actualización de Pedidos e Inventario</h2>
                <p>Ingrese los nuevos lotes de calzado disponibles para habilitar la selección a los clientes en el catálogo público.</p>
            </div>

            <form action="${pageContext.request.contextPath}/productoControlador" method="POST" class="custom-form">
                
                <div class="form-grid">
                    <div class="input-group">
                         <label for="Cantidad">Cantidad en Stock:</label>
                         <input class="input-registro" type="number" id="Cantidad" name="Cantidad" placeholder="Ej: 50" min="1" required>
                    </div>
                    
                    <div class="input-group">
                        <label for="Marca">Marca de Calzado:</label>
                        
                        <select class="input-registro" id="Marca" name="Marca" style="width: 100%; height: 44px; background-color: #34495e; color: white; border: 1px solid #4f5d73; border-radius: 4px; padding: 0 10px;" required>
                            <option value="" disabled selected>Seleccione la marca...</option>
                            <option value="NIKE">NIKE</option>
                            <option value="ADIDAS">ADIDAS</option>
                            <option value="PUMA">PUMA</option>
                            <option value="NEW BALANCE">NEW BALANCE</option>
                            <option value="REEBOK">REEBOK</option>
                        </select>
                    </div>
                    
                    <div class="input-group">
                        <label for="Talla">Talla (Nacional):</label>
                        <!-- MEJORA: Atributos min y max basados en tallas reales de calzado -->
                        <input class="input-registro" type="number" id="Talla" name="Talla" placeholder="Ej: 39" min="34" max="45" required>
                    </div>
                    
                    <div class="input-group">
                        <label for="precio">Precio al Público ($):</label>
                        <input class="input-registro" type="number" id="precio" name="precio" placeholder="Ej: 240000" min="0" required>
                    </div>
                    
                    <div class="input-group full-width">
                        <label for="Descripcion">Detalles y Modelo del Calzado:</label>
                        <textarea class="input-registro" id="Descripcion" name="Descripcion" rows="3" placeholder="Modelo exacto (ej: Air Max 270), color, materiales o tipo de suela..." required></textarea>
                    </div>
                </div>

                <div class="form-actions">
                    <button type="submit" name="accion" value="Guardar" class="btn-submit">Publicar en Catálogo</button>
                    <a href="${pageContext.request.contextPath}/productoControlador?accion=listado" class="btn-cancel">Ver Listado</a>
                </div>
                
            </form>
        </div>
    </div>
    
</body>
</html>

