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
    <!-- CSS básico para que la tabla se vea bien -->
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        table { border-collapse: collapse; width: 100%; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 12px; text-align: left; }
        th { background-color: #4CAF50; color: white; }
        tr:nth-child(even) { background-color: #f2f2f2; }
        .btn { padding: 8px 12px; text-decoration: none; border-radius: 4px; color: white; }
        .btn-edit { background-color: #2196F3; }
        .btn-delete { background-color: #f44336; }
        .btn-add { background-color: #4CAF50; margin-bottom: 10px; display: inline-block; }
    </style>
    
</head>
<body>

    <h1>Gestión de Clientes</h1>
    
    <!-- Botón para ir al formulario de agregar -->
    <a href="clientesControlador?accion=ingresar" class="btn btn-add">Nuevo Cliente</a>
    <a href="${pageContext.request.contextPath}/plantillaMenu/menu.jsp" class="btn btn-edit">Ingresar al Menu</a>

    <table>
        <thead>
            <tr>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Cédula</th>
                <th>Celular</th>
                <th>Email</th>
                <th>Departamento</th>
                <th>Municipio</th>
                <th>Direccion</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <%
                clientesDAO clientDAO = new clientesDAO();
                List<clientes> lista = clientDAO.listarcliente();
                for (clientes c : lista) {
                    %>
                <tr>
                    <td><%= c.getNombre()%></td>
                    <td><%= c.getApellido()%></td>
                    <td><%= c.getCedula()%></td>
                    <td><%= c.getCelular()%></td>
                    <td><%= c.getEmail()%></td>
                    <td><%= c.getDepartamento()%></td>
                    <td><%= c.getMunicipio()%></td>
                    <td><%= c.getDireccion()%></td>
                    <td>
                        <!-- Enlaces que llaman al Servlet pasandole la acción y el ID -->
                        <a href="clientesControlador?accion=actualizar&nombre=<%= c.getNombre()%>" class="btn btn-edit">Editar</a>
                        <a href="clientesControlador?accion=borrar&nombre=<%= c.getNombre()%>" class="btn btn-delete" 
                           onclick="return confirm('¿Estás seguro de eliminar este cliente?')">Eliminar</a>
                    </td>
                </tr>
            <% } %>
        </tbody>
    </table>
</body>
</html>

