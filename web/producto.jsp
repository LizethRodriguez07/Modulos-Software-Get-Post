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
    <title>Catálogo de Productos</title>
    <!-- Vincular CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css">
       
    <style>
        .catalogo {
            display: flex; 
            gap: 20px; 
            justify-content: center; 
            flex-wrap: wrap; 
            margin-bottom: 30px;
        }
        
        .producto-card {
            background: white; 
            border: 1px solid #ddd; 
            border-radius: 8px; 
            padding: 15px; 
            width: 250px; 
            text-align: center; 
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            display: flex;
            flex-direction: column;
            justify-content: space-between; 
            min-height: 400px; /* Ajustada la altura mínima para contener bien las imágenes */
        }
        
        .producto-card img {
            max-width: 100%;
            height: auto;
            border-radius: 4px;
        }
        
        .producto-card h3 { margin: 10px 0; color: #333; }
        .marca { color: #777; font-size: 0.9em; margin: 5px 0; }
        .talla { font-weight: bold; color: #555; }
        .precio { font-size: 1.2em; color: #2ecc71; font-weight: bold; margin: 10px 0; }
        .descripcion { font-size: 0.9em; color: #555; margin-bottom: 15px; }
        .selector-cantidad { margin: 10px 0; padding: 5px; width: 60px; }
        
        .boton-comprar {
            text-align: center;
            font-family: sans-serif; /* Cambiado a sans-serif para un diseño más moderno */
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

    <h1 style="text-align: center; margin-top: 20px;">CALZADO NIKE</h1>
<div class="catalogo">

    <!-- Producto 1 -->
    <div class="producto-card">
        <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
            <input type="hidden" name="productoNombre" value="NIKE AIR TRINE">
            <input type="hidden" name="productoPrecio" value="380000">
            
            <img src="img/niked.jpg" alt="Nike Air Trine"/>
            <h3>NIKE</h3>
            <p class="marca">Marca: AIR TRINE</p>
            <p class="talla">Talla: 37 a la 42</p>
            <p class="descripcion">Color: blanco, negro, gris y detalles verde encendido.</p>
            <p class="precio">$380.000</p>
            <label for="cant1">Cant: </label>
            <select id="cant1" name="cantidad" class="selector-cantidad">
                <option value="1">1</option><option value="2">2</option><option value="3">3</option>
            </select>
            <button class="boton-comprar" type="submit" name="accion" value="Comprar">Comprar</button>
        </form>
    </div>

    <!-- Producto 2 -->
    <div class="producto-card">
        <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
            <input type="hidden" name="productoNombre" value="NIKE AIR MAX 270">
            <input type="hidden" name="productoPrecio" value="200000">
            
            <img src="img/Nike negro.jpg" alt="Nike Air Max 270"/>
            <h3>NIKE TENIS</h3>
            <p class="marca">Marca: AIR MAX 270</p>
            <p class="talla">Talla: 37 a la 42</p>
            <p class="descripcion">Color: negro.</p>
            <p class="precio">$200.000</p>
            <label for="cant2">Cant: </label>
            <select id="cant2" name="cantidad" class="selector-cantidad">
                <option value="1">1</option><option value="2">2</option><option value="3">3</option>
            </select>
            <button class="boton-comprar" type="submit" name="accion" value="Comprar">Comprar</button>
        </form>
    </div>

    <!-- Producto 3 -->
    <div class="producto-card">
        <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
            <input type="hidden" name="productoNombre" value="NIKE AIR MAX">
            <input type="hidden" name="productoPrecio" value="300000">
            
            <img src="img/Nikex.jpg" alt="Nike Air Max"/>
            <h3>NIKE</h3>
            <p class="marca">Marca: AIR MAX</p>
            <p class="talla">Talla: 37 a la 42</p>
            <p class="descripcion">Color: ocre desierto.</p>
            <p class="precio">$300.000</p>
            <label for="cant3">Cant: </label>
            <select id="cant3" name="cantidad" class="selector-cantidad">
                <option value="1">1</option><option value="2">2</option><option value="3">3</option>
            </select>
            <button class="boton-comprar" type="submit" name="accion" value="Comprar">Comprar</button>
        </form>
    </div>

    <!-- Producto 4 -->
    <div class="producto-card">
        <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
            <input type="hidden" name="productoNombre" value="NIKE AIR TAVAS">
            <input type="hidden" name="productoPrecio" value="240000">
            
            <img src="img/nike.jpg" alt="Nike Air Tavas"/>
            <h3>NIKE TENIS</h3>
            <p class="marca">Marca: AIR TAVAS</p>
            <p class="talla">Talla: 37 a la 42</p>
            <p class="descripcion">Color: blancas y negras con detalles en verde voltio/lima.</p>
            <p class="precio">$240.000</p>
            <label for="cant4">Cant: </label>
            <select id="cant4" name="cantidad" class="selector-cantidad">
                <option value="1">1</option><option value="2">2</option><option value="3">3</option>
            </select>
            <button class="boton-comprar" type="submit" name="accion" value="Comprar">Comprar</button>
        </form>
    </div>
</div>

<h1 style="text-align: center;">CALZADO ADIDAS</h1>
<div class="catalogo">

    <!-- Producto 5 -->
    <div class="producto-card">
        <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
            <input type="hidden" name="productoNombre" value="ADIDAS AAA">
            <input type="hidden" name="productoPrecio" value="119000">
            
            <img src="img/Adidas 1.jpg" alt="Adidas AAA"/>
            <h3>ADIDAS</h3>
            <p class="marca">Marca: AAA</p>
            <p class="talla">Talla: 39 a la 42</p>
            <p class="descripcion">Color: blanco con negro.</p>
            <p class="precio">$119.000</p>
            <label for="cant5">Cant: </label>
            <select id="cant5" name="cantidad" class="selector-cantidad">
                <option value="1">1</option><option value="2">2</option><option value="3">3</option>
            </select>
            <button class="boton-comprar" type="submit" name="accion" value="Comprar">Comprar</button>
        </form>
    </div>

    <!-- Producto 6 -->
    <div class="producto-card">
        <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
            <input type="hidden" name="productoNombre" value="ADIDAS AA WHITE">
            <input type="hidden" name="productoPrecio" value="175000">
            
            <img src="img/Adidas 2.jpg" alt="Adidas AA"/>
            <h3>ADIDAS</h3>
            <p class="marca">Marca: AA</p>
            <p class="talla">Talla: 37 a la 42</p>
            <p class="descripcion">Color: Blanco con negro.</p>
            <p class="precio">$175.000</p>
            <label for="cant6">Cant: </label>
            <select id="cant6" name="cantidad" class="selector-cantidad">
                <option value="1">1</option><option value="2">2</option><option value="3">3</option>
            </select>
            <button class="boton-comprar" type="submit" name="accion" value="Comprar">Comprar</button>
        </form>
    </div>

    <!-- Producto 7 -->
    <div class="producto-card">
        <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
            <input type="hidden" name="productoNombre" value="ADIDAS AA BLACK">
            <input type="hidden" name="productoPrecio" value="190000">
            
            <img src="img/Adidas3.jpg" alt="Adidas AA Black"/>
            <h3>ADIDAS</h3>
            <p class="marca">Marca: AA</p>
            <p class="talla">Talla: 37 a la 42</p>
            <p class="descripcion">Color: negro.</p>
            <p class="precio">$190.000</p>
            <label for="cant7">Cant: </label>
            <select id="cant7" name="cantidad" class="selector-cantidad">
                <option value="1">1</option><option value="2">2</option><option value="3">3</option>
            </select>
            <button class="boton-comprar" type="submit" name="accion" value="Comprar">Comprar</button>
        </form>
    </div>
        <!-- Producto 4 ADIDAS -->
        <div class="producto-card">
            <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
                <input type="hidden" name="productoNombre" value="ADIDAS AAA WHITE">
                <input type="hidden" name="productoPrecio" value="240000">
                
                <img src="img/adidas4.jpg" alt="ADIDAS AAA"/>
                <h3>ADIDAS</h3>
                <p class="marca">Marca: AAA</p>
                <p class="talla">Talla: 37 a la 42</p>
                <p class="descripcion">Color: blanco.</p>
                <p class="precio">$240.000</p>
                <label for="cantAdi4">Cant: </label>
                <select id="cantAdi4" name="cantidad" class="selector-cantidad">
                    <option value="1">1</option><option value="2">2</option><option value="3">3</option>
                </select>
                <button class="boton-comprar" type="submit" name="accion" value="Comprar">Comprar</button>
            </form>
        </div>
    </div> <!-- Cierre de la sección de catálogo de ADIDAS -->
                
    <h1 style="text-align: center;">CALZADO PUMA</h1>
    <div class="catalogo">
    
        <!-- Producto 1 PUMA -->
        <div class="producto-card">
            <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
                <!-- CORRECCIÓN: Agregados los inputs ocultos -->
                <input type="hidden" name="productoNombre" value="PUMA PARK LIFESTYLE">
                <input type="hidden" name="productoPrecio" value="119000">
                
                <img src="img/Puma1.jpg" alt="Puma Park Lifestyle"/>
                <h3>PUMA</h3>
                <p class="marca">Marca: PARK LIFESTYLE</p>
                <p class="talla">Talla: 39 a la 42</p>
                <p class="descripcion">Color: blanco con detalles negros y grises.</p>
                <!-- CORRECCIÓN: Se restauró la visualización del precio -->
                <p class="precio">$119.000</p>
                <label for="cantPuma1">Cant: </label>
                <select id="cantPuma1" name="cantidad" class="selector-cantidad">
                    <option value="1">1</option><option value="2">2</option><option value="3">3</option>
                </select>
                <button class="boton-comprar" type="submit" name="accion" value="Comprar">Comprar</button>
            </form>
        </div>
                
        <!-- Producto 2 PUMA -->
        <div class="producto-card">
            <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
                <!-- CORRECCIÓN: Agregados los inputs ocultos -->
                <input type="hidden" name="productoNombre" value="PUMA RS-FAST">
                <input type="hidden" name="productoPrecio" value="175000">
                
                <img src="img/Puma2.jpg" alt="Puma RS-Fast"/>
                <h3>PUMA</h3>
                <p class="marca">Marca: RS-FAST</p>
                <p class="talla">Talla: 37 a la 42</p>
                <p class="descripcion">Color: negro y rojo.</p>
                <p class="precio">$175.000</p>
                <label for="cantPuma2">Cant: </label>
                <select id="cantPuma2" name="cantidad" class="selector-cantidad">
                    <option value="1">1</option><option value="2">2</option><option value="3">3</option>
                </select>
                <button class="boton-comprar" type="submit" name="accion" value="Comprar">Comprar</button>
            </form>
        </div>
                
        <!-- Producto 3 PUMA -->
        <div class="producto-card">
            <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
                <!-- CORRECCIÓN: Agregados los inputs ocultos -->
                <input type="hidden" name="productoNombre" value="PUMA CAVEN 2.0">
                <input type="hidden" name="productoPrecio" value="340000">
                
                <img src="img/Puma3.jpg" alt="Puma Caven 2.0"/>
                <h3>PUMA</h3>
                <p class="marca">Marca: CAVEN2.0</p>
                <p class="talla">Talla: 37 a la 42</p>
                <p class="descripcion">Color: blanco y gris con detalles perforados.</p>
                <p class="precio">$340.000</p>
                <label for="cantPuma3">Cant: </label>
                <select id="cantPuma3" name="cantidad" class="selector-cantidad">
                    <option value="1">1</option><option value="2">2</option><option value="3">3</option>
                </select>
                <button class="boton-comprar" type="submit" name="accion" value="Comprar">Comprar</button>
            </form>
        </div>
                
        <!-- Producto 4 PUMA -->
        <div class="producto-card">
            <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
                <!-- CORRECCIÓN: Agregados los inputs ocultos -->
                <input type="hidden" name="productoNombre" value="PUMA ONE PIECE">
                <input type="hidden" name="productoPrecio" value="500000">
                
                <img src="img/Puma4.jpg" alt="Puma One Piece"/>
                <h3>PUMA</h3>
                <p class="marca">Marca: ONE PIECE</p>
                <p class="talla">Talla: 37 a la 42</p>
                <p class="descripcion">Color: negro.</p>
                <p class="precio">$500.000</p>
                <label for="cantPuma4">Cant: </label>
                <select id="cantPuma4" name="cantidad" class="selector-cantidad">
                    <option value="1">1</option><option value="2">2</option><option value="3">3</option>
                </select>
                <button class="boton-comprar" type="submit" name="accion" value="Comprar">Comprar</button>
            </form>
        </div>
    </div> <!-- Cierre de la sección de catálogo de PUMA -->
<h1 style="text-align: center;">CALZADO NEW BALANCE</h1>
<div class="catalogo">
    
    <!-- Producto 1 NB -->
    <div class="producto-card">
        <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
            <input type="hidden" name="productoNombre" value="NEW BALANCE CLASSIC">
            <input type="hidden" name="productoPrecio" value="178000">
            
            <img src="img/New1.png" alt="New Balance Classic"/>
            <h3>NEW BALANCE</h3>
            <p class="marca">Marca: NEW BALANCE</p>
            <p class="talla">Talla: 39 a la 42</p>
            <p class="descripcion">Color: negro con detalles blanco y turquesa.</p>
            <p class="precio">$178.000</p>
            <label for="cantNB1">Cant: </label>
            <select id="cantNB1" name="cantidad" class="selector-cantidad">
                <option value="1">1</option><option value="2">2</option><option value="3">3</option>
            </select>
            <button class="boton-comprar" type="submit" name="accion" value="Comprar">Comprar</button>
        </form>
    </div>
                
    <!-- Producto 2 NB -->
    <div class="producto-card">
        <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
            <input type="hidden" name="productoNombre" value="NEW BALANCE 574 BLUE">
            <input type="hidden" name="productoPrecio" value="594000">
            
            <img src="img/New2.jpg" alt="New Balance 574"/>
            <h3>NEW BALANCE</h3>
            <p class="marca">Marca: 574</p>
            <p class="talla">Talla: 39 a la 42</p>
            <p class="descripcion">Color: gamuza azul y malla con detalles en naranja.</p>
            <p class="precio">$594.000</p>
            <label for="cantNB2">Cant: </label>
            <select id="cantNB2" name="cantidad" class="selector-cantidad">
                <option value="1">1</option><option value="2">2</option><option value="3">3</option>
            </select>
            <button class="boton-comprar" type="submit" name="accion" value="Comprar">Comprar</button>
        </form>
    </div>
                
    <!-- Producto 3 NB -->
    <div class="producto-card">
        <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
            <input type="hidden" name="productoNombre" value="NEW BALANCE 1300">
            <input type="hidden" name="productoPrecio" value="190000">
            
            <img src="img/New3.jpg" alt="New Balance 1300"/>
            <h3>NEW BALANCE</h3>
            <p class="marca">Marca: 1300</p>
            <p class="talla">Talla: 37 a la 42</p>
            <p class="descripcion">Color: blanco con detalles en negro y gris.</p>
            <p class="precio">$190.000</p>
            <label for="cantNB3">Cant: </label>
            <select id="cantNB3" name="cantidad" class="selector-cantidad">
                <option value="1">1</option><option value="2">2</option><option value="3">3</option>
            </select>
            <button class="boton-comprar" type="submit" name="accion" value="Comprar">Comprar</button>
        </form>
    </div>
                
    <!-- Producto 4 NB -->
    <div class="producto-card">
        <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
            <input type="hidden" name="productoNombre" value="NEW BALANCE 574 GREY">
            <input type="hidden" name="productoPrecio" value="240000">
            
            <img src="img/New4.jpg" alt="New Balance 574 Grey"/>
            <h3>NEW BALANCE</h3>
            <p class="marca">Marca: 574</p>
            <p class="talla">Talla: 37 a la 42</p>
            <p class="descripcion">Color: gris, negro y rojo.</p>
            <p class="precio">$240.000</p>
            <label for="cantNB4">Cant: </label>
            <select id="cantNB4" name="cantidad" class="selector-cantidad">
                <option value="1">1</option><option value="2">2</option><option value="3">3</option>
            </select>
            <button class="boton-comprar" type="submit" name="accion" value="Comprar">Comprar</button>
        </form>
    </div>
</div> <!-- Cierre del contenedor "catalogo" de New Balance -->

<h1 style="text-align: center;">CALZADO REEBOK</h1>
<div class="catalogo">
    
    <!-- Producto 1 RB -->
    <div class="producto-card">
        <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
            <input type="hidden" name="productoNombre" value="REEBOK CLASSIC GL6000">
            <input type="hidden" name="productoPrecio" value="119000">
            
            <img src="img/Reebook1.jpg" alt="Reebok GL6000"/>
            <h3>REEBOK</h3>
            <p class="marca">Marca: CLASSIC GL6000</p>
            <p class="talla">Talla: 39 a la 42</p>
            <p class="descripcion">Color: gris y azul marino.</p>
            <p class="precio">$119.000</p>
            <label for="cantRB1">Cant: </label>
            <select id="cantRB1" name="cantidad" class="selector-cantidad">
                <option value="1">1</option><option value="2">2</option><option value="3">3</option>
            </select>
            <button class="boton-comprar" type="submit" name="accion" value="Comprar">Comprar</button>
        </form>
    </div>

    <!-- Producto 2 RB -->
    <div class="producto-card">
        <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
            <input type="hidden" name="productoNombre" value="REEBOK CLASSIC BLACK">
            <input type="hidden" name="productoPrecio" value="175000">
            
            <img src="img/Reebook2.jpg" alt="Reebok Classic"/>
            <h3>REEBOK</h3>
            <p class="marca">Marca: CLASSIC</p>
            <p class="talla">Talla: 37 a la 42</p>
            <p class="descripcion">Color: negro y rojo.</p>
            <p class="precio">$175.000</p>
            <label for="cantRB2">Cant: </label>
            <select id="cantRB2" name="cantidad" class="selector-cantidad">
                <option value="1">1</option><option value="2">2</option><option value="3">3</option>
            </select>
            <button class="boton-comprar" type="submit" name="accion" value="Comprar">Comprar</button>
        </form>
    </div>

    <!-- Producto 3 RB -->
    <div class="producto-card">
        <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
            <input type="hidden" name="productoNombre" value="REEBOK CLUB C 85">
            <input type="hidden" name="productoPrecio" value="190000">
            
            <img src="img/Reebook3.jpg" alt="Reebok Club C 85"/>
            <h3>REEBOK</h3>
            <p class="marca">Marca: CLUB C 85</p>
            <p class="talla">Talla: 37 a la 42</p>
            <p class="descripcion">Color: blanco.</p>
            <p class="precio">$190.000</p>
            <label for="cantRB3">Cant: </label>
            <select id="cantRB3" name="cantidad" class="selector-cantidad">
                <option value="1">1</option><option value="2">2</option><option value="3">3</option>
            </select>
            <button class="boton-comprar" type="submit" name="accion" value="Comprar">Comprar</button>
        </form>
    </div>

    <!-- Producto 4 RB -->
    <div class="producto-card">
        <form action="${pageContext.request.contextPath}/clientesControlador" method="POST">
            <input type="hidden" name="productoNombre" value="REEBOK CLASSIC LEATHER">
            <input type="hidden" name="productoPrecio" value="240000">
            
            <img src="img/Reebook4.jpg" alt="Reebok Classic Leather"/>
            <h3>REEBOK</h3>
            <p class="marca">Marca: CLASSIC LEATHER</p>
            <p class="talla">Talla: 37 a la 42</p>
            <p class="descripcion">Color: blanco.</p>
            <p class="precio">$240.000</p>
            <label for="cantRB4">Cant: </label>
            <select id="cantRB4" name="cantidad" class="selector-cantidad">
                <option value="1">1</option><option value="2">2</option><option value="3">3</option>
            </select>
            <button class="boton-comprar" type="submit" name="accion" value="Comprar">Comprar</button>
        </form>
    </div>
</div> <!-- Cierre del contenedor "catalogo" de Reebok -->

</body>
</html>
