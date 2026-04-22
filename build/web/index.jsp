<%-- 
    Document   : index
    Created on : 9/04/2026, 2:15:08 p. m.
    Author     : H-P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>STORE DANY | Gestión de Ventas Online</title>
        
        <!-- Vincular CSS -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css">
        
        <%-- El menú debe ir preferiblemente al inicio del body o aquí si contiene solo estilos --%>
        <%@include file="plantillaMenu/menu.jsp" %>
    </head>
    <body>
       
        <div class="container-fluid"> <!-- Usamos fluid para que ocupe todo el ancho -->
            
            <!-- SECCIÓN HERO (PORTADA) -->
            <header style="
                position: relative; 
                min-height: 80vh; 
                display: flex; 
                align-items: center; 
                justify-content: center; 
                text-align: center; 
                color: white; 
                background: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), 
                            url('${pageContext.request.contextPath}/imagenes/.jpg') no-repeat center center/cover;
                font-family: 'Poppins', sans-serif;
                margin-bottom: 30px;">
                
                     <!-- SECCIÓN SOBRE LA PROPIETARIA -->
<section style="padding: 60px 20px; background-color: #ffffff; font-family: 'Poppins', sans-serif;">
    <div style="max-width: 900px; margin: 0 auto; display: flex; flex-wrap: wrap; align-items: center; gap: 40px;">
        
        <!-- Columna de Texto -->
        <div style="flex: 1; min-width: 300px;">
            <h2 style="color: #2c3e50; font-size: 2rem; margin-bottom: 20px; border-left: 5px solid #e74c3c; padding-left: 15px;">
                Conoce Store Dany
            </h2>
            
            <p style="line-height: 1.8; color: #555; text-align: justify;">
                ¡HOLA! Mucho gusto, me presento, mi nombre es <strong style="color: #2c3e50;">Katherine Rodriguez</strong>, 
                propietaria, en orgullo de invitarlos a mi negocio <strong>STORE DANY</strong>. 
                Al acceder a este sitio, usted cuenta con el respaldo de una gestión de ventas online 
                enfocada en la excelencia.
            </p>
            
            <p style="line-height: 1.8; color: #555; text-align: justify;">
                Nuestro propósito es brindarle asesoría personalizada en <strong>Calzado para Hombre</strong>, 
                marcando tendencia con las marcas más top: 
                <span style="color: #e74c3c; font-weight: bold;">Adidas, Nike, New Balance, Puma y Reebok</span>.
            </p>

            <div style="background: #f8f9fa; padding: 20px; border-radius: 10px; margin-top: 20px;">
                <p style="margin: 0; font-style: italic; color: #777;">
                    "Nos caracteriza el desempeño, la empatía y la flexibilidad, garantizando confianza y cumplimiento 
                    legal en cada uno de sus pedidos."
                </p>
            </div>
        </div>

        <!-- Columna de Imagen/Sello (Opcional: puedes poner tu foto o un logo) -->
        <div style="flex: 1; min-width: 300px; text-align: center;">
            <div style="padding: 40px; border: 2px dashed #ccc; border-radius: 20px;">
                <h3 style="color: #2c3e50;">Compromiso Store Dany</h3>
                <ul style="list-style: none; padding: 0; text-align: left; color: #555;">
                    <li style="margin-bottom: 10px;">✅ Atención Personalizada</li>
                    <li style="margin-bottom: 10px;">✅ Marcas 100% Originales</li>
                    <li style="margin-bottom: 10px;">✅ Pagos Seguros</li>
                    <li style="margin-bottom: 10px;">✅ Envíos Garantizados</li>
                </ul>
            </div>
        </div>
    </div>
</section>
       
        </div>

    </body>
</html>

