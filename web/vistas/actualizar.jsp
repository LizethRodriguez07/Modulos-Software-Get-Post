<%-- 
    Document   : actualizar
    Created on : 9/04/2026, 6:10:36 p. m.
    Author     : H-P
--%>

<%@page import="java.util.List"%>
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
    <body class="container mt-5">
        
        <div class="container">
            <div class="row">
            <div class="col-12">
        <%
                clientesDAO clientDAO = new clientesDAO();
                List<clientes> lista = clientDAO.listarcliente();
                for (clientes c : lista) {
                    %>
        
        <!-- FORMULARIO DE INGRESO DE DATOS -->
        <h4 class="mb-0">Editar Cliente: <%= c.getNombre() %></h4>
        <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
                <label>Nombre:</label>
                <input class="inut-registro" type="text" name="nombre" value="<%= c.getNombre() %>" readonly>
                
                
                <label>Apellido:</label>
                <input class="inut-registro" type="text" name="apellido" value="<%= c.getApellido() %>">
                
                <label>Cedula:</label>
                <input class="inut-registro" type="text" name="cedula" value="<%= c.getCedula() %>">
                
                <label>Celular:</label>
                <input class="inut-registro" type="text" name="celular" value="<%= c.getCelular() %>">
                
                <label>Email:</label>
                <input class="inut-registro" type="email" name="email" value="<%= c.getEmail() %>">
                
                <label>Departamento:</label>
                <input class="inut-registro" type="text" name="departamento" value="<%= c.getDepartamento() %>">
                
                <label>Municipio:</label>
                <input class="inut-registro" type="text" name="municipio" value="<%= c.getMunicipio() %>">
                
                <label>Direccion</label>
                <input class="inut-registro" type="text" name="direccion" value="<%= c.getDireccion() %>">
                
                <button type="submit" name="accion" values="Actualizar">Actualizar</button>
        <% } %>
        </form>
                
            </div>
        </div>
    </div>
                            
       </body>
</html>
