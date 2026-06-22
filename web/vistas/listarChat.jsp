<%-- 
    Document   : listarChat
    Created on : 21/04/2026, 2:56:41 p. m.
    Author     : H-P
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelos.chat"%>
<%@page import="ModelosDAO.chatDAO"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Listado de Productos</title>
    <!-- Vincular tu archivo CSS externo unificado -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css">
</head>
<body>

    <!-- Contenedor general oscuro que unifica la estética del sistema -->
    <div class="table-wrapper">
        <div class="table-container">
            
            <!-- Encabezado de la Sección de Gestión de Chats -->
            <div class="table-header-section">
                <h2>Gestión de Chats y Mensajería</h2>
                
                <!-- Grupo de botones de navegación superior corregidos con el contextPath del servidor -->
                <div class="table-actions-nav">
                    <a href="${pageContext.request.contextPath}/chatControlador?accion=ingresar" class="btn-table-add">Nuevo Registro</a>
                    <a href="${pageContext.request.contextPath}/index.jsp" class="btn-table-menu">Ingresar al Menú</a>
                </div>
            </div>

            <!-- Contenedor con scroll horizontal automático para pantallas de celulares -->
            <div class="responsive-table-holder">
                <table class="custom-premium-table">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nombre Cliente</th>
                            <th>Mensajería</th>
                            <th>Estado Chat</th>
                            <th class="text-center">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            chatDAO chaDAO = new chatDAO();
                            List<chat> lista = chaDAO.listarchat();
                            for (chat cht : lista) {
                        %>
                            <tr>
                                <td><strong><%= cht.getIdChat()%></strong></td>
                                <td><%= cht.getClienteChat()%></td>
                                <td><%= cht.getMensajeria()%></td>
                                <td><span class="brand-tags"><%= cht.getEstadoChat()%></span></td>
                                <td>
                                    <div class="action-buttons-group">
                                        <!-- Enlaces dinámicos corregidos hacia el Servlet utilizando rutas absolutas seguras -->
                                        <a href="${pageContext.request.contextPath}/chatControlador?accion=actualizar&idChat=<%= cht.getIdChat()%>" class="btn-action-edit">Editar</a>
                                        <a href="${pageContext.request.contextPath}/chatControlador?accion=borrar&idChat=<%= cht.getIdChat()%>" class="btn-action-delete" 
                                           onclick="return confirm('¿Estás seguro de eliminar el registro de chat #<%= cht.getIdChat() %> de la base de datos?')">Eliminar</a>
                                    </div>
                                </td>
                            </tr>
                        <% } %>
                    </tbody>
                </table>
            </div>
            
        </div>
    </div>
    
</body>
</html>
