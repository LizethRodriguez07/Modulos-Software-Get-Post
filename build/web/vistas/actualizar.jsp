<%-- 
    Document   : actualizar
    Created on : 9/04/2026, 6:10:36 p. m.
    Author     : H-P
--%>

<%@page import="ModelosDAO.clientesDAO"%>
<%@page import="Modelos.clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Actualizar Cliente</title>
    <!-- vincular css - estilos.css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css">
</head>
<body>
    <!-- Contenedor Principal -->
    <div class="form-wrapper">
        <div class="form-container edit-mode">
            
            <%
                clientes c = (clientes) request.getAttribute("cliente");
                if (c == null) {
                    c = new clientes(); 
                }
            %>
            
            <!-- Encabezado del Formulario -->
            <div class="form-header">
                <h2>
                    EDITAR CLIENTE: <%= c.getNombre() != null ? c.getNombre() : "" %> <%= c.getApellido() != null ? c.getApellido() : "" %>
                </h2>
                <p>
                    Modifique la información residencial o de contacto del cliente en las casillas correspondientes.
                </p>
            </div>
            
            <!-- FORMULARIO DE INGRESO DE DATOS -->
            <form action="${pageContext.request.contextPath}/clientesControlador" method="POST" class="custom-form">
                
                
                <div class="form-grid">
                    
                    <div class="input-group">
                        <label for="nombre">Nombre (Lectura):</label>
                        <input class="input-registro" type="text" id="nombre" name="nombre" value="<%= c.getNombre() != null ? c.getNombre() : "" %>" readonly>
                    </div>
                    
                    <div class="input-group">
                        <label for="apellido">Apellido:</label>
                        <input class="input-registro" type="text" id="apellido" name="apellido" value="<%= c.getApellido() != null ? c.getApellido() : "" %>" required>
                    </div>
                    
                    <div class="input-group">
                        <label for="cedula">Cédula:</label>
                        <input class="input-registro" type="text" id="cedula" name="cedula" value="<%= c.getCedula() != null ? c.getCedula() : "" %>" required>
                    </div>
                    
                    <div class="input-group">
                        <label for="celular">Celular:</label>
                        <input class="input-registro" type="text" id="celular" name="celular" value="<%= c.getCelular() != null ? c.getCelular() : "" %>" required>
                    </div>
                    
                    <div class="input-group full-width">
                        <label for="email">Correo Electrónico:</label>
                        <input class="input-registro" type="email" id="email" name="email" value="<%= c.getEmail() != null ? c.getEmail() : "" %>" required>
                    </div>
                    
                    <div class="input-group">
                        <label for="departamento">Departamento:</label>
                        <input class="input-registro" type="text" id="departamento" name="departamento" value="<%= c.getDepartamento() != null ? c.getDepartamento() : "" %>" required>
                    </div>
                    
                    <div class="input-group">
                        <label for="municipio">Municipio:</label>
                        <input class="input-registro" type="text" id="municipio" name="municipio" value="<%= c.getMunicipio() != null ? c.getMunicipio() : "" %>" required>
                    </div>
                    
                    <div class="input-group full-width">
                        <label for="direccion">Dirección Residencial:</label>
                        <input class="input-registro" type="text" id="direccion" name="direccion" value="<%= c.getDireccion() != null ? c.getDireccion() : "" %>" required>
                    </div>
                    
                </div>
                
                <!-- Boton -->
                <div class="form-actions">
                    <button type="submit" name="accion" value="Actualizar" class="btn-update">Actualizar Cliente</button>
                    
                    <a href="${pageContext.request.contextPath}/clientesControlador?accion=listado" class="btn-cancel">Cancelar</a>
                </div>
                
            </form>
            
        </div>
    </div>
</body>
</html>
