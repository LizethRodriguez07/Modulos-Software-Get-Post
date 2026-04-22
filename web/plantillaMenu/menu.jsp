<%-- 
    Document   : menu
    Created on : 10/04/2026, 4:48:20 p. m.
    Author     : H-P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- vincular css - estilos.css -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css">

<%-- menu.jsp --%>
<style>
    /* Usamos Flexbox para alinear logo y opciones */
    nav ul { 
        list-style: none; 
        padding: 0; 
        margin: 0; 
        background: #222; 
        display: flex; 
        align-items: center; /* Centra verticalmente el logo y los textos */
    }
    
    nav li { position: relative; display: inline-block; }
    
    nav a { display: block; padding: 15px 20px; color: white; text-decoration: none; }
    nav a:hover { background: #444; }
    
    
    /* Estilos básicos para el menú */
    nav ul { list-style: none; padding: 0; margin: 0; background: #333; }
    nav li { position: relative; display: inline-block; }
    nav a { display: block; padding: 15px 20px; color: white; text-decoration: none; }
    nav a:hover { background: #444; }

    /* Estilo para el contenedor del logo */
    .nav-logo {
        padding: 5px 25px; /* Más espacio lateral */
    }
    
    .nav-logo img {
        height: 90px; /* Aumentamos el tamaño significativamente */
        width: auto;
        display: block;
        padding: 5px; /* Espacio entre el borde del logo y el fondo blanco */
        border-radius: 8px; /* Bordes suaves */
        transition: transform 0.3s ease; /* Efecto al pasar el mouse */
        box-shadow: 0 4px 8px rgba(0,0,0,0.3); /* Sombra para dar profundidad */
    }
    
    /* Estilo del submenú (oculto por defecto) */
    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #f9f9f9;
        
        box-shadow: 0px 8px 16px rgba(0,0,0,0.2);
        z-index: 1;
    }
    .dropdown-content a { color: black; padding: 12px 16px; }
    .dropdown-content a:hover { background-color: #f1f1f1; }

    /* Mostrar el submenú al pasar el mouse */
    .dropdown:hover .dropdown-content { display: block; }
</style>

<nav>
    <ul>
        <!-- FOTO AL INICIO (LOGO) -->
        <li class="nav-logo">
            <a href="${pageContext.request.contextPath}/index.jsp" style="padding: 0;">
                <img src="${pageContext.request.contextPath}/img/logotipo.png" alt="STORE DANY">
            </a>
        </li>
        
        <li><a href="${pageContext.request.contextPath}/index.jsp">Inicio</a></li>
        <li></li>
        <li class="dropdown">
            <a href="#">Registros Clientes▼</a>
            <div class="dropdown-content">
                <a href="${pageContext.request.contextPath}/vistas/listar.jsp">Listar</a>
                <a href="${pageContext.request.contextPath}/vistas/ingresar.jsp">Ingresar</a>
                <a href="${pageContext.request.contextPath}/vistas/actualizar.jsp">Actualizar</a>
            </div>
        </li>
                       
        <li></li>
        <li class="dropdown">
            <a href="#">Registros Productos▼</a>
            <div class="dropdown-content">
                <a href="${pageContext.request.contextPath}/producto.jsp">Productos</a>
                <a href="${pageContext.request.contextPath}/vistas/listarProducto.jsp">Listar</a>
                <a href="${pageContext.request.contextPath}/vistas/ingresarProducto.jsp">Ingresar</a>
                <a href="${pageContext.request.contextPath}/vistas/actualizarProducto.jsp">Actualizar</a>
            </div>
        </li>
        
        <li></li>
        <li class="dropdown">
            <a href="#">Registros Pagos▼</a>
            <div class="dropdown-content">
                <a href="${pageContext.request.contextPath}/vistas/listarDpg.jsp">Listar</a>
                <a href="${pageContext.request.contextPath}/vistas/ingresarDpg.jsp">Ingresar</a>
                <a href="${pageContext.request.contextPath}/vistas/actualizarDpg.jsp">Actualizar</a>
            </div>
        </li>
        
        <li></li>
        <li class="dropdown">
            <a href="#">Registros Pedidos▼</a>
            <div class="dropdown-content">
                <a href="${pageContext.request.contextPath}/vistas/listarPedidos.jsp">Listar</a>
                <a href="${pageContext.request.contextPath}/vistas/ingresarPedidos.jsp">Ingresar</a>
                <a href="${pageContext.request.contextPath}/vistas/actualizarPedidos.jsp">Actualizar</a>
            </div>
        </li>
        <li></li>
        <li class="dropdown">
            <a href="#">Registros ChatOnline▼</a>
            <div class="dropdown-content">
                <a href="${pageContext.request.contextPath}/vistas/listarChat.jsp">Listar</a>
                <a href="${pageContext.request.contextPath}/vistas/ingresarChat.jsp">Ingresar</a>
                <a href="${pageContext.request.contextPath}/vistas/actualizarChat.jsp">Actualizar</a>
            </div>
        </li>
    </ul>
</nav>
 </body>

</html>
