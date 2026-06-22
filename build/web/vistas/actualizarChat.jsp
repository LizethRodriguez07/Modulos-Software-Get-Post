<%-- 
    Document   : actualizarChat
    Created on : 21/04/2026, 3:08:17 p. m.
    Author     : H-P
--%>


<%@page import="java.util.List"%>
<%@page import="ModelosDAO.chatDAO"%>
<%@page import="Modelos.chat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Chat Online</title>
        <!-- Vincular archivo CSS externo unificado -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css">
    </head>
    <body>
        
        <%
           chat cht = (chat) request.getAttribute("lista");
            if (cht == null) {
                cht = new chat(); 
            }
        %>
        
        <!-- Contenedor Principal -->
        <div class="form-wrapper">
            <div class="form-container edit-mode">
                
                <!-- Encabezado del Formulario Dinámico (Un solo chat) -->
                <div class="form-header">
                    <h2>
                        EDITAR CHAT: 
                    </h2>
                    <p>
                        Modifique los datos de la consulta, asignaciones o estados correspondientes al registro de mensajería seleccionado.
                    </p>
                </div>
                
                <!-- FORMULARIO DE INGRESO DE DATOS -->
                <form action="${pageContext.request.contextPath}/chatControlador" method="POST" class="custom-form">
                    
                    <!-- Grupo del Formulario en Grid de 2 Columnas -->
                    <div class="form-grid">
                        
                        <div class="input-group">
                            <label for="idChat">Id (Lectura):</label>
                            <input class="input-registro" type="text" id="idChat" name="idChat" value="<%= cht.getIdChat() %>" readonly>
                        </div>
                        
                        <div class="input-group">
                            <label for="clienteChat">Nombre Cliente:</label>
                            <input class="input-registro" type="text" id="clienteChat" name="clienteChat" value="<%= cht.getClienteChat() != null ? cht.getClienteChat() : "" %>" required>
                        </div>
                        
                        <div class="input-group full-width">
                            <label for="Mensajeria">Mensajería / Consulta:</label>
                            <input class="input-registro" type="text" id="Mensajeria" name="Mensajeria" value="<%= cht.getMensajeria() != null ? cht.getMensajeria() : "" %>" required>
                        </div>
                        
                        <div class="input-group full-width">
                            <label for="estadoChat">Estado Chat:</label>
                            <input class="input-registro" type="text" id="estadoChat" name="estadoChat" value="<%= cht.getEstadoChat() != null ? cht.getEstadoChat() : "" %>" required>
                        </div>
                        
                    </div>
                    
                    <!-- Boton -->
                    <div class="form-actions">
                        <button type="submit" name="accion" value="Actualizar" class="btn-update">Actualizar Chat</button>
                        <a href="${pageContext.request.contextPath}/chatControlador?accion=listado" class="btn-cancel">Cancelar</a>
                    </div>
                    
                </form>
                
            </div>
        </div>
        
    </body>
</html>
