<%-- 
    Document   : producto
    Created on : 17/04/2026, 5:15:50 p. m.
    Author     : H-P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@include file="plantillaMenu/menu.jsp" %>
  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    <!-- vincular css - estilos.css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css">
       
   <title>Catálogo de Productos</title>
        
<style>
        .catalogo {
            display: flex; 
            gap: 20px; 
            justify-content: center; 
            flex-wrap: wrap; 
        }
        
        .producto-card {
            background: white; 
            border: 1px solid #ddd; 
            border-radius: 8px; 
            padding: 15px; 
            width: 250px; 
            text-align: center; 
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            
            /* Alineación flexible */
            display: flex;
            flex-direction: column;
            justify-content: space-between; /* Distribuye espacio y manda el botón al final */
            min-height: 40px; /* Altura mínima uniforme */
        }
        
        .producto-card h3 { margin: 10px 0; color: #333; }
        .marca { color: #777; font-size: 0.9em; margin: 5px 0; }
        .talla { font-weight: bold; color: #555; }
        .precio { font-size: 1.2em; color: #2ecc71; font-weight: bold; margin: 10px 0; }
        
        .descripcion { 
            font-size: 0.9em; 
            color: #555; 
            margin-bottom: 15px;
            
        }
        
        .selector-cantidad { margin: 10px 0; padding: 5px; width: 60px; }
        
        .boton-comprar {
            text-align: center;
            font-family: serif;
            padding: 10px;
            background-color: #3498db; 
            color: white; 
            border: none;  
            border-radius: 5px; 
            cursor: pointer;
            font-size: 1em; 
            width: 100%; 
            transition: background 0.3s;
        }
        
        .boton-comprar:hover { 
            background-color: #2980b9; 
        }
    </style>
    
</head>
<body>

<h1 style="text-align: center;">CALZADO NIKE</h1>
<div class="catalogo">

    <!-- Producto 1 -->
    <div class="producto-card">
        <div>
            <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
            <img src="img/niked.jpg" alt=""/>
            <h3>NIKE</h3>
            <p class="marca">Marca: AIR TRINE</p>
            <p class="talla">Talla: 37 a la 42</p>
            <p class="descripcion">Color: blanco, negro, gris y detalles verde encendido.</p>
            <p class="precio">$380.000</p>
            <label>Cant: </label>
            <select class="selector-cantidad">
                <option>1</option><option>2</option><option>3</option>
            </select>
            <input class="boton-comprar" type="sumit" name="comprar" value="Comprar">
            </form>
            </div>
    </div>

    <!-- Producto 2 -->
    <div class="producto-card">
        <div>
            <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
            <img src="img/Nike negro.jpg" alt=""/>
            <h3>NIKE TENIS</h3>
            <p class="marca">Marca: AIR MAX 270</p>
            <p class="talla">Talla: 37 a la 42</p>
            <p class="descripcion">Color: negro.</p>
            <p class="precio">$200.000</p>
            <label>Cant: </label>
            <select class="selector-cantidad">
                <option>1</option><option>2</option><option>3</option>
            </select>
            <input class="boton-comprar" type="sumit" name="comprar" value="Comprar">
            </form>
        </div>
    </div>

    <!-- Producto 3 -->
    <div class="producto-card">
        <div>
            <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
            <img src="img/Nikex.jpg" alt=""/>
            <h3>NIKE</h3>
            <p class="marca">Marca: AIR MAX</p>
            <p class="talla">Talla: 37 a la 42</p>
            <p class="descripcion">Color: ocre desierto.</p>
            <p class="precio">$300.000</p>
            <label>Cant: </label>
            <select class="selector-cantidad">
                <option>1</option><option>2</option><option>3</option>
            </select>
            <input class="boton-comprar" type="sumit" name="comprar" value="Comprar">
            </form>
        </div>
    </div>

    <!-- Producto 4 -->
    <div class="producto-card">
        <div>
            <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
            <img src="img/nike.jpg" alt=""/>
            <h3>NIKE TENIS</h3>
            <p class="marca">Marca: AIR TAVAS</p>
            <p class="talla">Talla: 37 a la 42</p>
            <p class="descripcion">Color: blancas y negras con detaller en verde voltio/lima.</p>
            <p class="precio">$240.000</p>
            <label>Cant: </label>
            <select class="selector-cantidad">
                <option>1</option><option>2</option><option>3</option>
            </select>
            <input class="boton-comprar" type="sumit" name="comprar" value="Comprar">
            </form>
        </div>
    </div>
</div>
            <h1 style="text-align: center;">CALZADO ADIDAS</h1>
<div class="catalogo">
    
            <!-- Producto 1 -->
    <div class="producto-card">
        <div>
            <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
            <img src="img/Adidas 1.jpg" alt=""/>
            <h3>ADIDAS</h3>
            <p class="marca">Marca: AAA</p>
            <p class="talla">Talla: 39 a la 42</p>
            <p class="descripcion">Color: blanco con negro.</p>
            <p class="precio">$119.000</p>
            <label>Cant: </label>
            <select class="selector-cantidad">
                <option>1</option><option>2</option><option>3</option>
            </select>
            <input class="boton-comprar" type="sumit" name="comprar" value="Comprar">
            </form>
        </div>
    </div>
            <!-- Producto 2 -->
    <div class="producto-card">
        <div>
            <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
            <img src="img/Adidas 2.jpg" alt=""/>
            <h3>ADIDAS</h3>
            <p class="marca">Marca: AA</p>
            <p class="talla">Talla: 37 a la 42</p>
            <p class="descripcion">Cblanco con negro.</p>
            <p class="precio">$175.000</p>
            <label>Cant: </label>
            <select class="selector-cantidad">
                <option>1</option><option>2</option><option>3</option>
            </select>
            <input class="boton-comprar" type="sumit" name="comprar" value="Comprar">
            </form>
        </div>
    </div>
            <!-- Producto 3 -->
    <div class="producto-card">
        <div>
            <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
            <img src="img/Adidas3.jpg" alt=""/>
            <h3>ADIDAS</h3>
            <p class="marca">Marca: AA</p>
            <p class="talla">Talla: 37 a la 42</p>
            <p class="descripcion">Color: negro.</p>
            <p class="precio">$190.000</p>
            <label>Cant: </label>
            <select class="selector-cantidad">
                <option>1</option><option>2</option><option>3</option>
            </select>
            <input class="boton-comprar" type="sumit" name="comprar" value="Comprar">
            </form>
        </div>
    </div>
            <!-- Producto 4 -->
    <div class="producto-card">
        <div>
            <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
            <img src="img/adidas4.jpg" alt=""/>
            <h3>ADIDAS</h3>
            <p class="marca">Marca: AAA</p>
            <p class="talla">Talla: 37 a la 42</p>
            <p class="descripcion">Color: blanco.</p>
            <p class="precio">$240.000</p>
            <label>Cant: </label>
            <select class="selector-cantidad">
                <option>1</option><option>2</option><option>3</option>
            </select>
            <input class="boton-comprar" type="sumit" name="comprar" value="Comprar">
            </form>
        </div>
    </div>
</div>
            <h1 style="text-align: center;">CALZADO PUMA</h1>
<div class="catalogo">
    
            <!-- Producto 1 -->
    <div class="producto-card">
        <div>
            <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
                <img src="img/Puma1.jpg" alt=""/>
            <h3>PUMA</h3>
            <p class="marca">Marca: PARK LIFESTYLE</p>
            <p class="talla">Talla: 39 a la 42</p>
            <p class="descripcion">Color: blanco con detalles negros y grises.</p>
            <p class="precio">$119.000</p>
            <label>Cant: </label>
            <select class="selector-cantidad">
                <option>1</option><option>2</option><option>3</option>
            </select>
            <input class="boton-comprar" type="sumit" name="comprar" value="Comprar">
            </form>
        </div>
    </div>
            <!-- Producto 2 -->
    <div class="producto-card">
        <div>
            <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
                <img src="img/Puma2.jpg" alt=""/>
            <h3>PUMA</h3>
            <p class="marca">Marca: RS-FAST</p>
            <p class="talla">Talla: 37 a la 42</p>
            <p class="descripcion">Color: negro y rojo.</p>
            <p class="precio">$175.000</p>
            <label>Cant: </label>
            <select class="selector-cantidad">
                <option>1</option><option>2</option><option>3</option>
            </select>
            <input class="boton-comprar" type="sumit" name="comprar" value="Comprar">
            </form>
        </div>
    </div>
            <!-- Producto 3 -->
    <div class="producto-card">
        <div>
            <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
                <img src="img/Puma3.jpg" alt=""/>
            <h3>PUMA</h3>
            <p class="marca">Marca: CAVEN2.0</p>
            <p class="talla">Talla: 37 a la 42</p>
            <p class="descripcion">Color: blanco y gris con detalles perforados.</p>
            <p class="precio">$340.000</p>
            <label>Cant: </label>
            <select class="selector-cantidad">
                <option>1</option><option>2</option><option>3</option>
            </select>
            <input class="boton-comprar" type="sumit" name="comprar" value="Comprar">
            </form>
        </div>
    </div>
            <!-- Producto 4 -->
    <div class="producto-card">
        <div>
            <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
                <img src="img/Puma4.jpg" alt=""/>
            <h3>PUMA</h3>
            <p class="marca">Marca: ONE PIECE</p>
            <p class="talla">Talla: 37 a la 42</p>
            <p class="descripcion">Color: negro.</p>
            <p class="precio">$500.000</p>
            <label>Cant: </label>
            <select class="selector-cantidad">
                <option>1</option><option>2</option><option>3</option>
            </select>
            <input class="boton-comprar" type="sumit" name="comprar" value="Comprar">
            </form>
        </div>
    </div>
</div>
            <h1 style="text-align: center;">CALZADO NEW BALANCE</h1>
<div class="catalogo">
    
            <!-- Producto 1 -->
    <div class="producto-card">
        <div>
            <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
                <img src="img/New1.png" alt=""/>
            <h3>NEW BALANCE</h3>
            <p class="marca">Marca: NEW BALANCE</p>
            <p class="talla">Talla: 39 a la 42</p>
            <p class="descripcion">Color: negro con detalles blanco y turquesa.</p>
            <p class="precio">$178.000</p>
            <label>Cant: </label>
            <select class="selector-cantidad">
                <option>1</option><option>2</option><option>3</option>
            </select>
            <input class="boton-comprar" type="sumit" name="comprar" value="Comprar">
            </form>
        </div>
    </div>
            <!-- Producto 2 -->
    <div class="producto-card">
        <div>
            <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
                <img src="img/New2.jpg" alt=""/>
            <h3>NEW BALANCE</h3>
            <p class="marca">Marca: 574</p>
            <p class="talla">Talla: 39 a la 42</p>
            <p class="descripcion">Color: gamuza azul y malla con detalles en naranja.</p>
            <p class="precio">$594.000</p>
            <label>Cant: </label>
            <select class="selector-cantidad">
                <option>1</option><option>2</option><option>3</option>
            </select>
            <input class="boton-comprar" type="sumit" name="comprar" value="Comprar">
            </form>
        </div>
    </div>
            <!-- Producto 3 -->
    <div class="producto-card">
        <div>
            <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
                <img src="img/New3.jpg" alt=""/>
            <h3>NEW BALANCE</h3>
            <p class="marca">Marca: 1300</p>
            <p class="talla">Talla: 37 a la 42</p>
            <p class="descripcion">Color: blanco con detalles en negro y gris.</p>
            <p class="precio">$190.000</p>
            <label>Cant: </label>
            <select class="selector-cantidad">
                <option>1</option><option>2</option><option>3</option>
            </select>
            <input class="boton-comprar" type="sumit" name="comprar" value="Comprar">
            </form>
        </div>
    </div>
            <!-- Producto 4 -->
    <div class="producto-card">
        <div>
            <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
                <img src="img/New4.jpg" alt=""/>
            <h3>NEW BALANCE</h3>
            <p class="marca">Marca: 574</p>
            <p class="talla">Talla: 37 a la 42</p>
            <p class="descripcion">Color: gris, negro y rojo.</p>
            <p class="precio">$240.000</p>
            <label>Cant: </label>
            <select class="selector-cantidad">
                <option>1</option><option>2</option><option>3</option>
            </select>
            <input class="boton-comprar" type="sumit" name="comprar" value="Comprar">
            </form>
        </div>
    </div>
</div>
            <h1 style="text-align: center;">CALZADO REEBOK</h1>
<div class="catalogo">
    
            <!-- Producto 1 -->
    <div class="producto-card">
        <div>
            <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
                <img src="img/Reebook1.jpg" alt=""/>
            <h3>REEBOK</h3>
            <p class="marca">Marca: CLASSIC GL6000</p>
            <p class="talla">Talla: 39 a la 42</p>
            <p class="descripcion">Color: gris y azul marino.</p>
            <p class="precio">$119.000</p>
            <label>Cant: </label>
            <select class="selector-cantidad">
                <option>1</option><option>2</option><option>3</option>
            </select>
            <input class="boton-comprar" type="sumit" name="comprar" value="Comprar">
            </form>
        </div>
    </div>
            <!-- Producto 2 -->
    <div class="producto-card">
        <div>
            <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
                <img src="img/Reebook2.jpg" alt=""/>
            <h3>REEBOK</h3>
            <p class="marca">Marca: CLASSIC</p>
            <p class="talla">Talla: 37 a la 42</p>
            <p class="descripcion">Color: negro y rojo.</p>
            <p class="precio">$175.000</p>
            <label>Cant: </label>
            <select class="selector-cantidad">
                <option>1</option><option>2</option><option>3</option>
            </select>
            <input class="boton-comprar" type="sumit" name="comprar" value="Comprar">
            </form>
        </div>
    </div>
            <!-- Producto 3 -->
    <div class="producto-card">
        <div>
            <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
                <img src="img/Reebook3.jpg" alt=""/>
            <h3>REEBOK</h3>
            <p class="marca">Marca: ZIC</p>
            <p class="talla">Talla: 39 a la 42</p>
            <p class="descripcion">Color: blanco y azul.</p>
            <p class="precio">$190.000</p>
            <label>Cant: </label>
            <select class="selector-cantidad">
                <option>1</option><option>2</option><option>3</option>
            </select>
            <input class="boton-comprar" type="sumit" name="comprar" value="Comprar">
            </form>
        </div>
    </div>
            <!-- Producto 4 -->
    <div class="producto-card">
        <div>
            <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
                <img src="img/Reebook4.jpg" alt=""/>
            <h3>REEBOK</h3>
            <p class="marca">Marca: CLASSIC LEATHER</p>
            <p class="talla">Talla: 37 a la 42</p>
            <p class="descripcion">Color: blanco.</p>
            <p class="precio">$240.000</p>
            <label>Cant: </label>
            <select class="selector-cantidad">
                <option>1</option><option>2</option><option>3</option>
            </select>
            <input class="boton-comprar" type="sumit" name="comprar" value="Comprar">
            </form>
        </div>
    </div>
</div>


    </body>
</html>
