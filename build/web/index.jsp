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
        
        <%-- El menú --%>
        <%@include file="plantillaMenu/menu.jsp" %>
    </head>
    <body>
       
        <div class="container-fluid main-wrapper">
            
            <!-- SECCIÓN HERO (PORTADA) -->
        <div class="container-fluid main-wrapper"> 
            
            <!-- SECCIÓN HERO (PORTADA PRINCIPAL) -->
            <header class="hero-cover" style="background: linear-gradient(rgba(0, 0, 0, 0.65), rgba(0, 0, 0, 0.65)), url('${pageContext.request.contextPath}/img/zapatos.jpg') no-repeat center center/cover;">
                <div class="hero-overlay">
                    <div class="hero-content">
                        <h1>STORE DANY</h1>
                        <p>Gestión de Ventas Online y Tendencias en Calzado Masculino</p>
                        <a href="#conocenos" class="btn-hero-action">Descubrir Más</a>
                    </div>
                </div>
            </header>
                
            <!-- SECCIÓN SOBRE LA PROPIETARIA (COMPLETAMENTE INDEPENDIENTE) -->
            <section id="conocenos" class="owner-section">
                <div class="owner-grid-container">
                    
                    <!-- Columna de Texto Informativo -->
                    <div class="text-column">
                        <h2>Conoce Store Dany</h2>
                        
                        <p class="bio-paragraph">
                            ¡HOLA! Mucho gusto, me presento, mi nombre es <strong>Katherine Rodriguez</strong>, 
                            propietaria, en orgullo de invitarlos a mi negocio <strong>STORE DANY</strong>. 
                            Al acceder a este sitio, cuenta con el respaldo de una gestión de ventas online 
                            enfocada en la excelencia.
                        </p>
                        
                        <p class="bio-paragraph">
                            Nuestro propósito es brindarle asesoría personalizada en <strong>Calzado para Hombre</strong>, 
                            marcando tendencia con las marcas más top: 
                            <span class="brand-tags">Adidas, Nike, New Balance, Puma y Reebok</span>.
                        </p>

                        <div class="quote-card">
                            <p>
                                "Nos caracteriza el desempeño, la empatía y la flexibilidad, garantizando confianza y cumplimiento 
                                legal en cada uno de sus pedidos."
                            </p>
                        </div>
                    </div>

                    <!-- Columna del Sello de Compromiso -->
                    <div class="badge-column">
                        <div class="guarantee-box">
                            <h3>Compromiso Store Dany</h3>
                            <ul class="guarantee-items">
                                <li><span class="emoji-icon">✅</span> Atención Personalizada</li>
                                <li><span class="emoji-icon">✅</span> Marcas 100% Originales</li>
                                <li><span class="emoji-icon">✅</span> Pagos Seguros</li>
                                <li><span class="emoji-icon">✅</span> Envíos Garantizados</li>
                            </ul>
                        </div>
                    </div>
                    
                </div>
            </section>
       
        </div>

    </body>
</html>

