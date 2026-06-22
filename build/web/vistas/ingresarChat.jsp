<%-- 
    Document   : ingresarChat
    Created on : 21/04/2026, 3:15:54 p. m.
    Author     : H-P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<!-- vincular css - estilos.css -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css">

<!DOCTYPE html>
    
        <title>Ingresar Chat</title>
<!-- Vincular único archivo CSS externo en el Head -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css">
    </head>
    <body>
        
        <!-- Contenedor Principal con Fondo Oscuro Premium -->
        <div class="form-wrapper">
            <div class="form-container">
                
                <!-- Encabezado del Formulario -->
                <div class="form-header">
                    <h2>Ingreso de Chat</h2>
                    <p>
                        Por favor ingresa los datos de mensajería en cada casilla correspondiente, 
                        con el propósito de dar seguimiento oportuno a las solicitudes y dudas de tus clientes.
                    </p>
                </div>
                    
                <!-- FORMULARIO DE INGRESO DE DATOS -->
                <form action="${pageContext.request.contextPath}/chatControlador" method="POST" class="custom-form">
                    
                    <!-- Grupo del Formulario en Grid Dinámico -->
                    <div class="form-grid">
                        
                        <div class="input-group full-width">
                            <label for="clienteChat">Nombre Cliente:</label>
                            <input class="input-registro" type="text" id="clienteChat" name="clienteChat" placeholder="Ej: Juan Andrés Silva" required>
                        </div>
                        
                        <div class="input-group full-width">
                            <label for="Mensajeria">Mensajería / Consulta:</label>
                            <textarea class="input-registro" id="Mensajeria" name="Mensajeria" rows="3" placeholder="Preguntas o sugerencias del cliente..." required></textarea>
                        </div>
                        
                        <div class="input-group full-width">
                            <label for="estadoChat">Estado Chat:</label>
                            <input class="input-registro" type="text" id="estadoChat" name="estadoChat" placeholder="Ej: Leído / Pendiente por responder" required>
                        </div>
                        
                    </div>
                    
                    <!-- Boton -->
                    <div class="form-actions">
                        <button type="submit" name="accion" value="Guardar" class="btn-submit">Guardar Chat</button>
                        <a href="${pageContext.request.contextPath}/chatControlador?accion=listado" class="btn-cancel">Cancelar</a>
                    </div>
                    
                </form>
            </div>
        </div>
        
    </body>
</html>
