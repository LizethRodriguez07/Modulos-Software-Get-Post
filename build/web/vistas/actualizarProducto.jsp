<%-- 
    Document   : actualizarProducto
    Created on : 17/04/2026, 7:27:24 p. m.
    Author     : H-P
--%>

<%@page import="java.util.List"%>
<%@page import="ModelosDAO.productoDAO"%>
<%@page import="Modelos.producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Producto</title>
        
        <!-- vincular css - estilos.css -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css">
        
    </head>
    <body class="container mt-5">
        
        <div class="container">
            <div class="row">
            <div class="col-12">
        <%
                productoDAO producDAO = new productoDAO();
                List<producto> lista = producDAO.listarproducto();
                for (producto pro : lista) {
                    %>
        
        <!-- FORMULARIO DE INGRESO DE DATOS -->
        <h4 class="mb-0">Editar Cliente: <%= pro.getIdProducto()%></h4>
        <form action="${pageContext.request.contextPath}/productoControlador" method="POST">
                <label>Id:</label>
                <input class="inut-registro" type="text" name="idproducto" value="<%= pro.getIdProducto()%>" readonly>
                <br>
                
                <label>Cantidad:</label>
                <input class="inut-registro" type="text" name="Cantidad" value="<%= pro.getCantidad()%>">
                
                <label>Marca:</label>
                <input class="inut-registro" type="text" name="Marca" value="<%= pro.getMarca()%>">
                
                <label>Talla</label>
                <input class="inut-registro" type="text" name="Talla" value="<%= pro.getTalla()%>">
                
                <label>Descripcion:</label>
                <input class="inut-registro" type="text" name="Descripcion" value="<%= pro.getDescripcion()%>">
                
                <label>Precio</label>
                <input class="inut-registro" type="text" name="precio" value="<%= pro.getPrecio()%>">
                
                <button type="submit" name="accion" values="Actualizar">Actualizar</button>
        <% } %>
        </form>
                
            </div>
        </div>
        </div>
    </body>
</html>
