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
        <title>Actualizar Producto</title>
        
        <!-- vincular css - estilos.css -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css">
        
    </head>
    <body class="container mt-5">
        
        <div class="container">
            <div class="row">
            <div class="col-12">
        <%
                chatDAO chaDAO = new chatDAO();
                List<chat> lista = chaDAO.listarchat();
                for (chat cht : lista) {
                    %>
        
        <!-- FORMULARIO DE INGRESO DE DATOS -->
        <h4 class="mb-0">Editar Chat: <%= cht.getIdChat()%></h4>
        <form action="${pageContext.request.contextPath}/chatControlador" method="POST">
                <label>Id:</label>
                <input class="inut-registro" type="text" name="idChat" value="<%= cht.getIdChat()%>" readonly>
                <br>
                
                <label>Nombre Cliente</label>
                <input class="inut-registro" type="text" name="clienteChat" value="<%= cht.getMensajeria()%>">
                
                <label>Mensajeria:</label>
                <input class="inut-registro" type="text" name="Mensajeria" value="<%= cht.getMensajeria()%>">
                
                <label>Estado Chat</label>
                <input class="inut-registro" type="text" name="estadoChat" value="<%= cht.getEstadoChat()%>">
                
                
                <button type="submit" name="accion" values="Actualizar">Actualizar</button>
        <% } %>
        </form>
                
            </div>
        </div>
        </div>
    </body>
</html>
