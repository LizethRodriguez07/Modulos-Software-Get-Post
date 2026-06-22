<%-- 
    Document   : ingresar
    Created on : 9/04/2026, 6:11:04 p. m.
    Author     : H-P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Cliente</title>     
    </head>
    <body>
        <!-- vincular css - estilos.css -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css">
        
        <!-- Contenedor Principal -->
        <div class="form-wrapper">
            <div class="form-container">
                
                <!-- encavezado del formulario -->
                <div class="form-header">
                    <h2>
                        <img src="${pageContext.request.contextPath}/img/Base de datos.png" alt="Base de datos" class="header-icon">
                        INGRESO DE DATOS PERSONALES
                        <img src="${pageContext.request.contextPath}/img/Base de datos.png" alt="Base de datos" class="header-icon">
                    </h2>
                    <p>
                        Por favor ingresa tus datos de información en cada casilla correspondiente,
                        con el propósito de brindarte mayor seguridad y prioridad de tu información personal,
                        con el fin de caracterizar una correcta identificación a tu servicio y producto.
                    </p>
                </div>
                    
                    <!-- FORMULARIO DE INGRESO DE DATOS -->
                <form action="${pageContext.request.contextPath}/clientesControlador" method="POST" class="custom-form">
                    
                    <!-- Grupo del Formulario en Grid de 2 Columnas -->
                    <div class="form-grid">
                        <div class="input-group">
                            <label for="nombre">Nombre:</label>
                            <input class="input-registro" type="text" id="nombre" name="nombre" placeholder="Ej: Juan" required>
                        </div>
                        
                        <div class="input-group">
                            <label for="apellido">Apellido:</label>
                            <input class="input-registro" type="text" id="apellido" name="apellido" placeholder="Ej: Díaz" required>
                        </div>
                        
                        <div class="input-group">
                            <label for="cedula">Cédula:</label>
                            <input class="input-registro" type="text" id="cedula" name="cedula" placeholder="Ej: 1234567890" required>
                        </div>
                        
                        <div class="input-group">
                            <label for="celular">Celular:</label>
                            <input class="input-registro" type="text" id="celular" name="celular" placeholder="Ej: 3001234567" required>
                        </div>
                        
                        <div class="input-group full-width">
                            <label for="email">Correo Electrónico:</label>
                            <input class="input-registro" type="email" id="email" name="email" placeholder="Ej: juan@gmail.com" required>
                        </div>
                        
                        <div class="input-group">
                            <label for="departamento">Departamento:</label>
                            <input class="input-registro" type="text" id="departamento" name="departamento" placeholder="Ej: Santander" required>
                        </div>
                        
                        <div class="input-group">
                            <label for="municipio">Municipio:</label>
                            <input class="input-registro" type="text" id="municipio" name="municipio" placeholder="Ej: San Vicente" required>
                        </div>
                        
                        <div class="input-group full-width">
                            <label for="direccion">Dirección Residencial:</label>
                            <input class="input-registro" type="text" id="direccion" name="direccion" placeholder="Ej: Carrera, Barrio o Vereda" required>
                        </div>
                    </div>
                    
                    <!-- Botones de Acción -->
                    <div class="form-actions">
                        <button type="submit" name="accion" value="Guardar" class="btn-submit">Guardar Cliente</button>
                        <a href="${pageContext.request.contextPath}/index.jsp" class="btn-cancel">Cancelar</a>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>