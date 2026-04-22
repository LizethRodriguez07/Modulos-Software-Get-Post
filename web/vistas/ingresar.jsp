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
        
        <!-- CREACION FORMULARIO POST -->
        <div class="container">
            <div class="row">
            <div class="col-12">
                
                <h2><img src="../img/Base de datos.png" alt=""/>INGRESO DE DATOS PERSONALES<img src="../img/Base de datos.png" alt=""/></h2>
                <p>Por favor ingresa tus dados de información en cada casilla correspondiente,
                con el propósito de brindarle mayor seguridad y prioridad de tu información personal,
                con el fin de caracterizar una correcta identificación a tu servicio y producto.</p>
                
                <!-- FORMULARIO DE INGRESO DE DATOS -->
                <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
                <label>Nombre:</label>
                <input class="inut-registro" type="text" name="nombre" placeholder="Ej: juan" required>
                
                <label>Apellido:</label>
                <input class="inut-registro" type="text" name="apellido" placeholder="Ej: Diaz" requited>
                
                <label>Cedula:</label>
                <input class="inut-registro" type="text" name="cedula" placeholder="Ej: 1234567890"required>
                
                <label>Celular:</label>
                <input class="inut-registro" type="text" name="celular" placeholder="Ej: 1234567890" required>
                
                <label>Email:</label>
                <input class="inut-registro" type="email" name="email" placeholder="Ej: juan@gmail.com" required=>
                
                <label>Departamento:</label>
                <input class="inut-registro" type="text" name="departamento" placeholder="Ej: Santander" required>
                
                <label>Municipio:</label>
                <input class="inut-registro" type="text" name="municipio" placeholder="Ej: San Vicente" required>
                
                <label>Direccion</label>
                <input class="inut-registro" type="text" name="direccion" placeholder="Ej: carrera, Barrio o vereda " required>
                
                <button type="submit" name="accion" value="Guardar">Guardar Cliente</button>
                <a href="clientesControlador?accion=listado" class="btn btn-secondary">Cancelar</a>
                
                </form>
                 
                
            </div>
            </div>
        </div>
    </body>
</html>
