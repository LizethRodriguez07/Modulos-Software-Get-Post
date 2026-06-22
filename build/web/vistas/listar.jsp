<%-- 
    Document   : listar
    Created on : 9/04/2026, 6:11:11 p. m.
    Author     : H-P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelos.clientes"%>
<%@page import="ModelosDAO.clientesDAO"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Listado de Clientes</title>
    <!-- vincular css - estilos.css -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css">
        
</head>
<body>
    <!-- Contenedor general -->
    <div class="table-wrapper">
        <div class="table-container">
            
            <!-- Encabezado de la Sección de Gestión -->
            <div class="table-header-section">
                <h2>Gestión de Clientes</h2>
                
                <!-- Grupo de botones de navegación superior -->
                <div class="table-actions-nav">
                    <a href="${pageContext.request.contextPath}/clientesControlador?accion=ingresar" class="btn-table-add">Nuevo Cliente</a>
                    <a href="${pageContext.request.contextPath}/index.jsp" class="btn-table-menu">Ingresar al Menú</a>
                </div>
            </div>

            
            <div class="responsive-table-holder">
                <table class="custom-premium-table">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Cédula</th>
                            <th>Celular</th>
                            <th>Email</th>
                            <th>Departamento</th>
                            <th>Municipio</th>
                            <th>Dirección</th>
                            <th class="text-center">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            clientesDAO clientDAO = new clientesDAO();
                            List<clientes> lista = clientDAO.listarcliente();
                            for (clientes c : lista) {
                        %>
                            <tr>
                                <td><strong><%= c.getNombre()%></strong></td>
                                <td><%= c.getApellido()%></td>
                                <td><%= c.getCedula()%></td>
                                <td><%= c.getCelular()%></td>
                                <td class="table-email"><%= c.getEmail()%></td>
                                <td><%= c.getDepartamento()%></td>
                                <td><%= c.getMunicipio()%></td>
                                <td><%= c.getDireccion()%></td>
                                <td>
                                    <div class="action-buttons-group">
                                        <!-- Enlaces que llaman al Servlet -->
                                        <a href="${pageContext.request.contextPath}/clientesControlador?accion=actualizar&nombre=<%= c.getNombre()%>" class="btn-action-edit">Editar</a>
                                        <a href="${pageContext.request.contextPath}/clientesControlador?accion=borrar&nombre=<%= c.getNombre()%>" class="btn-action-delete" 
                                           onclick="return confirm('¿Estás seguro de eliminar a <%= c.getNombre() %> de la base de datos?')">Eliminar</a>
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

